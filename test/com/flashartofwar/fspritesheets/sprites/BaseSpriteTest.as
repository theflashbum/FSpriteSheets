package com.flashartofwar.fspritesheets.sprites
{
    import flash.display.BitmapData;
    import flash.display.PixelSnapping;

    import flexunit.framework.Assert;

    public class BaseSpriteTest
    {

        private var baseSprite:BaseSprite;

        public function BaseSpriteTest()
        {

        }

        [Before]
        public function runBeforeEveryTest():void
        {
            baseSprite = new BaseSprite(new BitmapData(100, 100, false, 0xff0000));
        }

        [After]
        public function runAfterEveryTest():void
        {
            baseSprite = null;
        }

        [Test]
        public function testPixelSnappingDefaultValue():void
        {
            Assert.assertEquals(baseSprite.pixelSnapping, PixelSnapping.AUTO);
        }

        [Test]
        public function testPixelSmoothDefaultValue():void
        {
            Assert.assertFalse(baseSprite.smoothing);
        }

        [Test]
        public function testPixelSnappingAndSmoothStateRetainAfterSettingBitmapData():void
        {
            var baseSprite2:BaseSprite = new BaseSprite(new BitmapData(50, 50, false, 0x000000), PixelSnapping.NEVER, true);
            baseSprite2.bitmapData = new BitmapData(200, 100, false, 0xff00ff);
            Assert.assertEquals(baseSprite2.pixelSnapping, PixelSnapping.NEVER);
            Assert.assertTrue(baseSprite2.smoothing);
        }

        [Test]
        public function testTidy():void
        {
            baseSprite = new BaseSprite();
            Assert.assertNotNull(baseSprite);
        }
    }
}

