package
{
	import Box2D.Common.Math.b2Vec2;
	import Box2D.Dynamics.b2World;
	
	import flash.display.Sprite;
	
	[SWF(width="1200",height="660",frameRate="24")]
	public class Box2DTest extends Sprite
	{
		private const PIXEL_TO_METER : uint = 30;
		
		private var _world : b2World;
		
		public function Box2DTest()
		{
			creatWorld();
			creatBall();
		}
		
		private function creatWorld():void
		{
			//重力设置 X轴重力，Y轴重力 , Z轴重力
//			var vec : b2Vec3 = new b2Vec3(0, 0, 0.98); （世界建立不支持第三种重力方式？）
			var vec : b2Vec2 = new b2Vec2(0 , 0);
			//是否休眠
			var doSleep : Boolean = true;
			_world = new b2World(vec , doSleep);
			
			//false时初始刚体不受重力影响，除非受力
			_world.SetWarmStarting(true);
		}
		
		private function creatBall():void
		{
			
		}
		
	}
}