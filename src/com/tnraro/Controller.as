package com.tnraro {
	import com.tnraro.ships.Ship;
import com.tnraro.ships.ShipError;
import com.tnraro.ships.ShipList;
	/**
	 * ...
	 * @author admin@tnraro.com
	 */
	public class Controller {
		private var ships:ShipList;
		
		public function Controller() {
			ships = new ShipList();
		}
		
		public function add(s:Ship):void{
			ships.push(s);
		}
		
		public function toString():String{
			return "Controller(ASD)";
		}
	}
}