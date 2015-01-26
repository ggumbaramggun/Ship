/**
 * Created by tnraro on 15. 1. 26.
 */
package com.tnraro.activity {
import com.tnraro.Controller;
import com.tnraro.ShipData;
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
            
            for each(var ship:Object in t.ships){
                var s:Ship = ShipData.getShip(ship.type);

                s.own = (info.id == ship.own);
                trace(s);
                
                c.add(s);
            }
            trace(c);
            
            teams.push(c);
        }
    }
    
    public function free():void{

    }
}
}
