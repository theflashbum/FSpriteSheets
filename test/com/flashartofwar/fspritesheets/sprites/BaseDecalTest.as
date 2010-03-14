package com.flashartofwar.fspritesheets.sprites {
	import flexunit.framework.Assert;

	public class BaseDecalTest
	{

		
		private var decal : BaseSprite;
		
		public function BaseDecalTest()
		{
			
		}
				
		[Test]
		public function testTidy():void
		{
			decal = new BaseSprite();
			Assert.assertNotNull(decal);
		}
	}
}

