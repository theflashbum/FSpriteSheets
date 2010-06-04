package com.flashartofwar.fspritesheets.sprites
{
    import com.flashartofwar.fspritesheets.sheets.SpriteSheet;

    import flash.display.BitmapData;
    import flash.events.Event;
    import flash.geom.Rectangle;
    import flash.utils.Timer;

    import flexunit.framework.Assert;

    import org.flexunit.async.Async;

    public class FSpriteTest
    {

        private var sprite:FSprite;
        private const SPRITE_A:String = "spriteA";
        private var sheet:SpriteSheet;
        private var timer:Timer;

        public function FSpriteTest()
        {

        }

        [Before]
        public function runBeforeEveryTest():void
        {
            sheet = new SpriteSheet(new BitmapData(100, 100, false, 0xff0000));
            sheet.registerDecal(SPRITE_A, new Rectangle(0, 0, 100, 50));
            sprite = sheet.getDecal(SPRITE_A);
            timer = new Timer(100, 1);
        }

        [After]
        public function runAfterEveryTest():void
        {
            sheet.clear();
            sheet = null;
            sprite = null;
            if (timer)
            {
                timer.stop();
            }

            timer = null;
        }

        [Test]
        public function testPixelSnappingDefaultValue():void
        {

        }

        [Test(async)]
        public function testChangeEvent():void
        {
            sprite.addEventListener(Event.CHANGE, Async.asyncHandler(this, handleChangeEvent, 500, null, handleTimeout), false, 0, true);
            sheet.bitmapData = new BitmapData(400, 400, false, 0xff00ff);
        }

        protected function handleChangeEvent(event:Event, passThroughData:Object):void
        {
            Assert.assertEquals(event.type, Event.CHANGE);
        }

        protected function handleTimeout(passThroughData:Object):void
        {
            Assert.fail("Timeout reached before event");
        }

        [Test(async)]
        public function testChangeEventAfterDetach():void
        {
            sprite.addEventListener(Event.CHANGE, Async.asyncHandler(this, handleDetachChangeEvent, 500, null, handleChangeEventDetachTimeout), false, 0, true);
            sprite.detach();
            sheet.bitmapData = new BitmapData(400, 400, false, 0xff00ff);
        }

        protected function handleDetachChangeEvent(event:Event, passThroughData:Object):void
        {
            Assert.fail("Change event fired when it shouldn't have.");
        }

        protected function handleChangeEventDetachTimeout(passThroughData:Object):void
        {
            Assert.assertTrue(true);
        }

       [Test(expected="Error")]
       public function testRefresh():void
       {
            sprite.detach();
            sprite.refresh();
       }
    }
}

