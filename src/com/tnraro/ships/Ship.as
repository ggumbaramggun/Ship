package com.tnraro.ships 
{
	import com.tnraro.turrets.Turret;
	/**
	 * ...
	 * @author admin@tnraro.com
	 */
	public class Ship {
		public var shipmap:ShipMap;
		
		public function Ship(){
			shipmap = new ShipMap();
		}
		
		public function build(data:*):void {
			shipmap.build(data);
		}
	}
}