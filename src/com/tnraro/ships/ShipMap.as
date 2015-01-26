package com.tnraro.ships 
{
import com.tnraro.parts.Tile;

/**
	 * ...
	 * @author admin@tnraro.com
	 */
	public class ShipMap {
		public var tiles:Vector.<Vector.<Tile>>;
		
		public function ShipMap() {
			tiles = new Vector.<Vector.<Tile>>();
		}
		
		/**
		 * Built a Ship
		 * @param	data Ship Design
		 */
		public function build(d:Object):Boolean {
			trace(d.name);
			for(var i:String in d.floors){
				var f:Array = d.floors[i];
				
				tiles.push(new Vector.<Tile>());
				
				for each(var s:String in f) {
					var a:Array = s.split(',');
					
					tiles[i].push(new Tile(a[0], a[1]));
				}
			}
			
			return true;
		}
		
	}

}