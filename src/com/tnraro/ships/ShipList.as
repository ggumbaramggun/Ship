package com.tnraro.ships {
import com.tnraro.utils.Iterator;

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


		/**
		 * 반복자를 생성합니다.
		 * @param properity 접근할 속성을 선택합니다. (기본값은 null입니다.)
		 * @return
		 */

		public function iterator(properity:String=null):Iterator{
			return new Iterator(ships, properity);
		}

		/*
		 * 이하. Array 기본 메서
		 * */
		public function concat(... args):Vector.<Ship>{
			return ships.concat.apply(null, args);
		}
		public function every(callback:Function, thisObject:Ship=null):Boolean{
			return ships.every.call(null, callback, thisObject);
		}
		public function filter(callback:Function, thisObject:Ship=null):Vector.<Ship>{
			return ships.filter.call(null, callback, thisObject);
		}
		public function forEach(callback:Function,thisObject:Ship=null):void{
			ships.forEach.call(null, callback, thisObject);
		}
		public function indexOf(searchElement:Ship,fromIndex:int=0):int{
			return ships.indexOf.call(null, searchElement, fromIndex);
		}
		public function join(sep:*):String{
			return ships.join.call(null, sep);
		}
		public function lastIndexOf(searchElement:Ship,fromIndex:int=0x7fffffff):int{
			return ships.lastIndexOf.call(null, searchElement, fromIndex);
		}
		public function map(callback:Function, thisObject:Ship=null):Vector.<Ship>{
			return ships.map.call(null, callback, thisObject);
		}
		public function pop():Ship{
			return ships.pop.call();
		}
		public function push(...rest):int{
			return ships.push.apply(null, rest);
		}
		public function reverse():Vector.<Ship>{
			return ships.reverse.call();
		}
		public function shift():Ship{
			return ships.shift.call();
		}
		public function slice(startIndex:int=0, endIndex:int=0xffffff):Vector.<Ship>{
			return ships.slice.call(null, startIndex, endIndex);
		}
		public function some(callback:Function,thisObject:*=null):Vector.<Ship>{
			return ships.some.call(null, callback, thisObject);
		}
		public function sort(...rest):Vector.<Ship>{
			return ships.sort.apply(null, rest);
		}
		public function splice(startIndex:int, deleteCount:int, ...rest):Vector.<Ship>{
			var a:Array = [startIndex, deleteCount];
			return ships.splice.apply(null, a.concat(rest));
		}
		public function toLocaleString():String{
			return ships.toLocaleString.call();
		}
		public function toString():String{
			return ships.toString();
		}
		public function unshift(...rest):int{
			return ships.unshift.apply(null, rest);
		}
		
		override flash_proxy function callProperty(name:*, ...rest):* {
			return this[name.toString()].apply(this, rest);
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