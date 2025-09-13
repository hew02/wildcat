package wildcat;

import wildcat.Types.Vec2;

class Entity extends h2d.Object {
	public var uid( default, null ):UInt;

	public var position:wildcat.Types.Vec2;

	public function new( scene:wildcat.Scene, x:Float, y:Float ) {
		super( scene );
		setPosition( x, y );
		position = new Vec2( x, y );
		uid = Common.makeUniqueId();
	}

	/**
		Use this instead of `setPosition` to get the use of `Vec2`.
	**/
	public inline function setPos( x:Float, y:Float ) {
		setPosition( x, y );
		position.x = x;
		position.y = y;
	}
}
