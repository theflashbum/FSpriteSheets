
package com.flashartofwar.fspritesheets.sprites
{
	import flash.display.BitmapData;
	import flash.events.IEventDispatcher;

	/**
	 * @author jessefreeman
	 */
	public interface IFSprite extends IEventDispatcher, IBaseSprite
	{

		function refresh() : void;

		function detach() : void;
	}
}
