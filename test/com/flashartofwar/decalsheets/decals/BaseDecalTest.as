package com.flashartofwar.decalsheets.decals {
	import flexunit.framework.Assert;

	public class BaseDecalTest
	{

		
		private var decal : BaseDecal;
		
		public function BaseDecalTest()
		{
			
		}
				
		[Test]
		public function testTidy():void
		{
			decal = new BaseDecal();
			Assert.assertNotNull(decal);
		}
	}
}

