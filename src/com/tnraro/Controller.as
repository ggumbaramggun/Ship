package com.tnraro {
	import com.tnraro.ships.Ship;
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
		
		/**
		 * JSON data.
		 * @param	...args
		 */
		public function addShips(ships:String):void {
			trace(ships);
			
			var ship:Array = [];// = JSON.parse(ships);
			
			for each(var k:Object in ship) {
				var s:Ship = new Ship();
				s.build(k);
				
				ships['push']();
				ships.();
				
				//ships
				//ships.push(s);
			}
		}
	}
}