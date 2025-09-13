/*
 * Copyright (c) 2025 Punch Software
 * 
 * An abstract class for use with the scene manager.
 */
package wildcat;

abstract class Scene extends h2d.Scene {

    /**
     * Almost always added to scene stack following construction. 
     */
    public function new( useDefaultScaleMode : Bool = true ) {
        super();
        // Decide whether or not to use the default scale mode for project.
        if ( useDefaultScaleMode ) {
            this.scaleMode = SceneManager.scaleMode;
        }
    }

    /**
     * Specific update function for given scene.
     */
    public abstract function update(dt:Float) : Void;

    /**
     * For event mapping.
     * @param ev An event tracker from Heaps.
     */
    public abstract function onEvent( ev: hxd.Event ) : Void;

    public abstract function getName() : String;

}
