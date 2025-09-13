package wildcat.collider;

class Rect extends h2d.col.Bounds {
	
	var parent:h2d.Object;
	var originX:Float;
	var originY:Float;

	public var isColliding(default,default): Bool;
	

	function new( parent:h2d.Object, x:Float, y:Float, w:Float, h:Float, ?rot:Float = 0, ?originX:Float, ?originY:Float ) {
		super();

		this.originX = originX;
		this.originY = originY;

		x += originX;
		y += originY;

		this.set(x, y, w, h);

		this.parent = parent;

		#if debug
		var colliderBounds = new h2d.Graphics( parent );
		colliderBounds.lineStyle( 1, 0x00FF00, 1.0 );
		colliderBounds.drawRect(originX, originY, w, h);
		colliderBounds.endFill();
		#end
	}

	public static inline function newEntityCollider( en:Entity, w:Float, h:Float, ?rot:Float = 0, ?originX:Float, ?originY:Float ):Rect {
		return new Rect( en, en.x, en.y, w, h, rot, originX, originY );
	}

	public static inline function newCollider( scene:wildcat.Scene, x:Float, y:Float, w:Float, h:Float, ?rot:Float = 0, ?originX:Float, ?originY:Float ):Rect {
		return new Rect( scene, x, y, w, h, rot, originX, originY );
	}
}
