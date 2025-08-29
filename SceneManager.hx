/*
 * Copyright (c) 2025 Punch Software
 */

package wildcat;

import haxe.ds.GenericStack;


class SceneManager {
    
    static var sceneHistory: GenericStack<Scene>;
    static var sceneDictionary: Map<String, Scene>;
    static var app: hxd.App;

    static public var scaleMode (default, null) : h2d.Scene.ScaleMode;

    static var numOfActiveScenes : UInt = 0;

    public static var head (default, null) : Scene;

    public static function init( _app: hxd.App, _scaleMode : h2d.Scene.ScaleMode = Resize ): Void {
        sceneHistory = new GenericStack<Scene>();
        app = _app;
        scaleMode = _scaleMode;
        //s2d; // the current scene
    }

    public static function swap( newScene: Scene ): Void {
        if ( sceneHistory.first() != null ) {
            pop();
        }
        push( newScene );
    }

    public static function push( newScene: Scene ): Void {
        numOfActiveScenes++;
        sceneHistory.add( newScene );
        head = newScene;
        app.setScene( sceneHistory.first() );
    }

    public static function pop(): Void {
        if ( numOfActiveScenes == 1 ) {
            trace( "[wildcat] can't remove top of scene stack b/c only 1 scene is active" );
            return;
        }

        var oldScene = sceneHistory.pop();
        if ( oldScene != null ) {
            oldScene.dispose();
        }

        app.setScene( sceneHistory.first() );
        head = sceneHistory.first();
        numOfActiveScenes--;
    }

    public static function first(): Scene {
        return sceneHistory.first();
    }
}