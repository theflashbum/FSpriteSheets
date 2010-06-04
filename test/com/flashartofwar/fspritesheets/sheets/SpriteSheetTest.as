package com.flashartofwar.fspritesheets.sheets
{
    import com.flashartofwar.fspritesheets.sprites.*;

    import flash.display.BitmapData;
    import flash.geom.Rectangle;

    import flexunit.framework.Assert;

    public class SpriteSheetTest
    {

        private var sheet:SpriteSheet;

        public function SpriteSheetTest()
        {

        }

        [Before]
        public function runBeforeEveryTest():void
        {
            sheet = new SpriteSheet(new BitmapData(100, 100, false, 0xff0000));
            sheet.registerSprite("decalA", new Rectangle(0, 0, 100, 50));
        }

        [After]
        public function runAfterEveryTest():void
        {
            sheet.clear();
            sheet = null;
        }

        [Test]
        public function testGetDecal():void
        {
            Assert.assertNotNull(sheet.getSprite("decalA"));
        }

        [Test]
        public function testSpriteDimensions():void
        {
            var sprite:IFSprite = sheet.getSprite("decalA");
            Assert.assertEquals(sprite.width, 100);
            Assert.assertEquals(sprite.height, 50);
        }

        [Test]
        public function testSample():void
        {
            var bm:BitmapData = sheet.sample("decalA");
            Assert.assertNotNull(bm);
            Assert.assertEquals(bm.width, 100);
            Assert.assertEquals(bm.height, 50);
        }

        [Test(expected="Error")]
        public function testSampleSpriteLargerThenSheet1():void
        {
            sheet.registerSprite("decalB", new Rectangle(300, 300));
            var sprite:IFSprite = sheet.getSprite("decalB");
        }

        [Test(expected="Error")]
        public function testSampleSpriteLargerThenSheet2():void
        {
            sheet.registerSprite("decalB", new Rectangle(100, 300));
            var sprite:IFSprite = sheet.getSprite("decalB");
        }

        [Test(expected="Error")]
        public function testSampleSpriteLargerThenSheet3():void
        {
            sheet.registerSprite("decalB", new Rectangle(300, 100));
            var sprite:IFSprite = sheet.getSprite("decalB");
        }

        [Test]
        public function testClear():void
        {
            sheet.clear();
            Assert.assertNull(sheet.getSprite("decalA"));
        }

        [Test]
        public function testDeleteDecal():void
        {
            sheet.deleteSprite("decalA")
            Assert.assertNull(sheet.getSprite("decalA"));
        }

    }
}

