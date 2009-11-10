
package com.flashartofwar.decalsheets.decals 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;

	/**
	 * @author jessefreeman
	 */
	public class BaseDecal extends Bitmap implements IBaseDecal 
	{

		public function BaseDecal(bitmapData : BitmapData = null, pixelSnapping : String = "auto", smoothing : Boolean = false)
		{
			super( bitmapData, pixelSnapping, smoothing );
		}
		
		public function get loaded() : Boolean
		{
			return true;
		}
		
		override public function get bitmapData() : BitmapData
		{
			return super.bitmapData;
		}
		
		override public function set bitmapData(value:BitmapData):void
		{
			var previousSmoothing:Boolean = smoothing;
			var previousPixelSnapping:String = pixelSnapping;
			
			super.bitmapData = value;
			
			smoothing = previousSmoothing;
			pixelSnapping = previousPixelSnapping;
			
			dispatchEvent(new Event( Event.CHANGE , true, true) );
		}
	}
}
