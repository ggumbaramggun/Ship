/**
 * Created by tnraro on 15. 1. 26.
 */
package com.tnraro.activity {
import com.tnraro.Controller;
import com.tnraro.ships.Ship;

public class InGame {
    private var teams:Vector.<Controller>;
    
    public function InGame() {
        teams = new Vector.<Controller>();
    }
    
    public function init(info:Object):void{
        //DEV
        
        for each(var t:Object in info.teams){
            var c:Controller = new Controller();
            
            for each(var s:String in t){
                var s:Ship = new Ship();
                
                c.add(s);
            }
            
            teams.push(c);
        }
    }
    
    public function free():void{

    }
}
}
