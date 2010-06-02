package com.flashartofwar.fspritesheets.sprites {

    import flexunit.framework.Assert;

	public class BaseSpriteTest
	{

		
		private var decal : BaseSprite;
		
		public function BaseSpriteTest()
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

