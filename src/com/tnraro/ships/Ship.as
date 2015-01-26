package com.tnraro.ships 
{
import com.tnraro.ShipData;
import com.tnraro.turrets.Turret;
	/**
	 * ...
	 * @author admin@tnraro.com
	 */
	public class Ship {
		private var _name:String;
		
		public var shipmap:ShipMap;
		
		public function Ship(){
			shipmap = new ShipMap();
		}
		
		public function build(data:*):void {
			_name = data.name;
			shipmap.build(data);
		}
		
		public function get name():String{
			return _name;
		}
		
		public function clone():Ship{
			var s:Ship = new Ship();
			s.build(ShipData.getShipData(_name));
			
			return s;
		}
		
		public function toString():String{
			return "Ship('"+_name+"')";
		}
	}
}