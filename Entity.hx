package wildcat;

class Entity extends h2d.Object {
	public var uid( default, null ):UInt;

	public function new( x:Float, y:Float ) {
		super();
		setPosition( x, y );
		uid = Common.makeUniqueId();
	}
}
