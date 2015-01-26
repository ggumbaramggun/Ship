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
		
		/**
		 * JSON data.
		 * @param	...args
		 */
		public function addShips(data:String):void {
			var ship:Object;
			try{
				ship = JSON.parse(data);
			}catch(e:Error){
				throw new ShipError('Data parse error [ships.json]', 1000);
			}
			
			for each(var k:Object in ship) {
				var s:Ship = new Ship();
				s.build(k);

				ships.push(s);
			}
		}
	}
}