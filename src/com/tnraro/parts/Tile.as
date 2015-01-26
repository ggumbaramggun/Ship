/**
 * Created by tnraro on 15. 1. 26.
 */
package com.tnraro.parts {
public class Tile {
    public var x:int;
    public var y:int;
    public var type:int;

    public function Tile(_x:int=0, _y:int=0) {
        x    = _x;
        y    = _y;
        type = 0;
    }
    
    public function toString():String{
        return 'Tile('+x+', '+y+', '+type+')';
    }
}
}
