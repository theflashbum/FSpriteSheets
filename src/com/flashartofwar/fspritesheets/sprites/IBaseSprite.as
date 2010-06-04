package com.flashartofwar.fspritesheets.sprites
{
    import flash.display.BitmapData;
    import flash.events.IEventDispatcher;

    /**
     * @author jessefreeman
     */
    public interface IBaseSprite extends IEventDispatcher
    {

        function get width():Number;

        function get height():Number;

        function get loaded():Boolean;

        function set bitmapData(value:BitmapData):void;

        function get bitmapData():BitmapData;

    }
}
