
package com.flashartofwar.decalsheets.sheets
{
	import com.flashartofwar.decalsheets.decals.Decal;
	import flash.display.BitmapData;
	import flash.display.IBitmapDrawable;
	import flash.events.IEventDispatcher;
	import flash.geom.Rectangle;	

	public interface IDecalSheet extends IBitmapDrawable, IEventDispatcher
	{

		function get loaded() : Boolean;

		function registerDecal(name : String, rectangle : Rectangle, scale9Rect : Rectangle = null) : void;

		function deleteDecal(name : String) : Boolean;

		function getDecal(name : String, pixelSnapping : String = "auto", smoothing : Boolean = false) : Decal;

		function sample(name : String, smoothing : Boolean = false) : BitmapData;

		function clear() : Boolean;
	}
}