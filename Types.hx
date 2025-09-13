package wildcat;

enum abstract State( Int ) {
	var Normal;
}

typedef Pair<T, G> = {
	var first:T;
	var second:G;
}

abstract Vec2( Pair<Float, Float> ) {
	public inline function new( x:Float, y:Float ) {
		this = {first: x, second: y};
	}

	public var x( get, set ):Float;

	inline function get_x() {
		return this.first;
	}

	inline function set_x( v:Float )
		return this.first = v;

	public var y( get, set ):Float;

	inline function get_y()
		return this.second;

	inline function set_y( v:Float )
		return this.second = v;

	public function normalize():Vec2 {
		var m = Math.sqrt( x * x + y * y );
		return new Vec2( x / m, y / m );
	}

	@:op(A - B)
	public inline function sub( rhs:Vec2 ):Vec2 {
		return new Vec2( x - rhs.x, y - rhs.y );
	}

	@:op(A + B)
	public inline function add( rhs:Vec2 ):Vec2 {
		return new Vec2( x + rhs.x, y + rhs.y );
	}

	public function dist( rhs:Vec2 ) {
		var l = rhs.x - x;
		var r = rhs.y - y;

		return Math.sqrt((l * l) + (r * r));
	}
}
