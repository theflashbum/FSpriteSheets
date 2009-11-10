
package com.flashartofwar.decalsheets.decals 
{
	import flash.display.BitmapData;
	import flash.events.IEventDispatcher;

	/**
	 * @author jessefreeman
	 */
	public interface IDecal extends IEventDispatcher, IBaseDecal
	{

		function refresh() : void;

		function detach() : void;
	}
}
