package wildcat;

class Button extends Entity {
    
    var interaction : h2d.Interactive;

    var width (default, null) : UInt;
    var height (default, null) : UInt;
  
    public function new( x : Int, y : Int, _width : UInt, _height : UInt ) {
        super( x, y );

        width = _width; height = _height;
        
        interaction = new h2d.Interactive( width, height, this );

        interaction.onOver = function(event : hxd.Event) {
        }
        interaction.onOut = function(event : hxd.Event) {
        }
        interaction.onPush = function( event : hxd.Event ) {
        }
        interaction.onRelease = function(event : hxd.Event) {
        }
        interaction.onClick = function(event : hxd.Event) {
        }
    }
}
