package wildcat.collider;

class Circle extends h2d.col.Circle {

	var entity:Entity;
    var originX:Float;
    var originY:Float;

	public function new( en:Entity, ray:Float, ?originX:Float, ?originY:Float ) {
		super( en.x, en.y, ray );

        this.originX = originX;
        this.originY = originY;

		entity = en;

		#if debug
		var colliderBounds = new h2d.Graphics( en );
		colliderBounds.lineStyle( 1, 0x0000FF, 1.0 );
		colliderBounds.drawCircle( originX, originY, ray );
		colliderBounds.endFill();
		#end
	}

	public function update() {
		this.x = entity.x;
		this.y = entity.y;
	}

	public function tryMove( dx:Float, dy:Float, other: Circle ): Void {
		// Proposed new collider position

		var future = new h2d.col.Circle( dx, dy, this.ray );

		if ( !future.collideCircle( other ) ) {
			entity.x = dx;
			entity.y = dy;
			this.update();
		}
	}
}
