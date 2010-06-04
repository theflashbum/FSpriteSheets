package com.flashartofwar.fspritesheets.sheets
{
    import com.flashartofwar.fspritesheets.sprites.FSprite;

    import flash.display.BitmapData;
    import flash.display.IBitmapDrawable;
    import flash.events.IEventDispatcher;
    import flash.geom.Rectangle;

    public interface ISpriteSheet extends IBitmapDrawable, IEventDispatcher
    {

        [Deprecated(replacement="This is being phased out.", since="1.0.0-alpha")] function get loaded():Boolean;

        function registerSprite(name:String, rectangle:Rectangle, scale9Rect:Rectangle = null):void;

        function deleteSprite(name:String):Boolean;

        function getSprite(name:String, pixelSnapping:String = "auto", smoothing:Boolean = false):FSprite;

        function sample(name:String, smoothing:Boolean = false):BitmapData;

        function clear():Boolean;
    }
}