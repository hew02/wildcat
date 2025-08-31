package wildcat;

class Entity extends h2d.Object {
	public var uid( default, null ):UInt;

	public function new( scene:wildcat.Scene, x:Float, y:Float ) {
		super(scene);
		setPosition( x, y );
		uid = Common.makeUniqueId();
	}
}
