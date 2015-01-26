package com.tnraro.ships 
{
import com.tnraro.ShipData;
import com.tnraro.modules.ModuleList;
import com.tnraro.turrets.Turret;
	/**
	 * ...
	 * @author admin@tnraro.com
	 */
	public class Ship {
		private var _type:String;

		public var shipmap:ShipMap;
		public var own:Boolean;
		
		public var modules:ModuleList;
		
		public function Ship(){
			shipmap = new ShipMap();
			own = false;
			
			modules = new ModuleList();
		}
		
		public function build(data:*):void {
			_type = data.type;
			shipmap.build(data);
		}
		
		public function get type():String{
			return _type;
		}
		
		public function clone():Ship{
			var s:Ship = new Ship();
			s.build(ShipData.getShipData(_type));
			
			return s;
		}
		
		public function toString():String{
			return "Ship('"+_type+"', "+own+")";
		}
	}
}