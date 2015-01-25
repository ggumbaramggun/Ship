package com.tnraro.ships {
	import flash.utils.flash_proxy;
	import flash.utils.Proxy;
	/**
	 * ...
	 * @author admin@tnraro.com
	 */
	public class ShipList extends Proxy{
		private var ships:Vector.<Ship>;
		
		public function ShipList() {
			super();
			
			ships = new Vector.<Ship>();
		}
		override flash_proxy function callProperty(name:*, ...rest):* {
			trace(name, rest);
			switch(name.toString()) {
				default:
					//return ships[name].apply(ships, rest);
					break;
			}
		}
		
		override flash_proxy function nextName(index:int):String{
			return (index - 1).toString();
		}
		
		override flash_proxy function nextNameIndex(index:int):int{
			if (index == 0) {
				
			}
			
			if (index < ships.length) {
				return index + 1;
			}else {
				return 0;
			}
		}
		
		override flash_proxy function nextValue(index:int):*{
			return ships[index];
		}
		
		override flash_proxy function getProperty(name:*):*{
			return ships[name];
		}
		
		override flash_proxy function setProperty(name:*, value:*):void{
			ships[name] = value;
		}
	}
}