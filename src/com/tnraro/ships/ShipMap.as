package com.tnraro.ships 
{
	import flash.geom.Point;
	/**
	 * ...
	 * @author admin@tnraro.com
	 */
	public class ShipMap {
		public var tiles:Vector.<Vector.<Point>>;
		
		public function ShipMap() {
			tiles = new Vector.<Vector.<Point>>();
		}
		
		/**
		 * Built a Ship
		 * @param	data Ship Design
		 */
		public function build(d:Object):Boolean {
			trace(d.name);
			for(var i:String in d.floors){
				var f:Array = d.floors[i];
				
				tiles.push(new Vector.<Point>());
				
				for each(var s:String in f) {
					var a:Array = s.split(',');
					
					tiles[i].push(new Point(a[0], a[1]));
				}
			}
			
			return true;
		}
		
	}

}