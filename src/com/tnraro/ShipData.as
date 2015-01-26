/**
 * Created by tnraro on 15. 1. 26.
 */
package com.tnraro {
import com.tnraro.ships.Ship;
import com.tnraro.ships.ShipError;
import com.tnraro.ships.ShipList;

public class ShipData {
    private static var datas:Array = [];
    private static var ships:ShipList = new ShipList();
    private static var keys:Object = {};
    
    /**
     * JSON data.
     * @param	...args
     */
    public static function addShips(data:String):void {
        var ship:Object;
        try{
            ship = JSON.parse(data);
        }catch(e:Error){
            throw new ShipError('Data Parse Error', 1000);
        }

        for each(var k:Object in ship) {
            var s:Ship = new Ship();
            s.build(k);
            
            datas.push(k);
            keys[s.type] = ships.push(s)-1;
        }
    }

    /**
     * clone Ship
     * @param type
     * @return Ship
     */
    public static function getShip(type:String):Ship{
        return ships[ keys[type] ].clone();
    }
    
    public static function getShipData(type:String):Object{
        return datas[ keys[type] ];
    }
}
}
