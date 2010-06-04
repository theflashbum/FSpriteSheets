package com.flashartofwar.dsc.ui
{
    import flash.display.DisplayObject;

    import mx.core.UIComponent;

    public class DisplayUIComponent extends UIComponent
    {
        public function DisplayUIComponent(sprite:DisplayObject = null)
        {
            super();
            if (sprite != null)
            {
                explicitHeight = sprite.height;
                explicitWidth = sprite.width;

                addChild(sprite);
            }
        }

        public function set display(value:DisplayObject):void
        {
            explicitHeight = value.height;
            explicitWidth = value.width;

            addChild(value);
        }
    }
}