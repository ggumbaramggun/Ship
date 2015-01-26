package com.tnraro.modules {
import com.tnraro.utils.Iterator;

import flash.utils.flash_proxy;
import flash.utils.Proxy;
/**
 * ...
 * @author admin@tnraro.com
 */
public class ModuleList extends Proxy{
    private var modules:Vector.<IModule>;

    public function ModuleList() {
        super();

        modules = new Vector.<IModule>();
    }


    /**
     * 반복자를 생성합니다.
     * @param properity 접근할 속성을 선택합니다. (기본값은 null입니다.)
     * @return
     */

    public function iterator(properity:String=null):Iterator{
        return new Iterator(modules, properity);
    }

    /*
     * 이하. Array 기본 메서
     * */
    public function concat(... args):Vector.<IModule>{
        return modules.concat.apply(null, args);
    }
    public function every(callback:Function, thisObject:IModule=null):Boolean{
        return modules.every.call(null, callback, thisObject);
    }
    public function filter(callback:Function, thisObject:IModule=null):Vector.<IModule>{
        return modules.filter.call(null, callback, thisObject);
    }
    public function forEach(callback:Function,thisObject:IModule=null):void{
        modules.forEach.call(null, callback, thisObject);
    }
    public function indexOf(searchElement:IModule,fromIndex:int=0):int{
        return modules.indexOf.call(null, searchElement, fromIndex);
    }
    public function join(sep:*):String{
        return modules.join.call(null, sep);
    }
    public function lastIndexOf(searchElement:IModule,fromIndex:int=0x7fffffff):int{
        return modules.lastIndexOf.call(null, searchElement, fromIndex);
    }
    public function map(callback:Function, thisObject:IModule=null):Vector.<IModule>{
        return modules.map.call(null, callback, thisObject);
    }
    public function pop():IModule{
        return modules.pop.call();
    }
    public function push(...rest):int{
        return modules.push.apply(null, rest);
    }
    public function reverse():Vector.<IModule>{
        return modules.reverse.call();
    }
    public function shift():IModule{
        return modules.shift.call();
    }
    public function slice(startIndex:int=0, endIndex:int=0xffffff):Vector.<IModule>{
        return modules.slice.call(null, startIndex, endIndex);
    }
    public function some(callback:Function,thisObject:*=null):Vector.<IModule>{
        return modules.some.call(null, callback, thisObject);
    }
    public function sort(...rest):Vector.<IModule>{
        return modules.sort.apply(null, rest);
    }
    public function splice(startIndex:int, deleteCount:int, ...rest):Vector.<IModule>{
        var a:Array = [startIndex, deleteCount];
        return modules.splice.apply(null, a.concat(rest));
    }
    public function toLocaleString():String{
        return modules.toLocaleString.call();
    }
    public function toString():String{
        return modules.toString();
    }
    public function unshift(...rest):int{
        return modules.unshift.apply(null, rest);
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

        if (index < modules.length) {
            return index + 1;
        }else {
            return 0;
        }
    }

    override flash_proxy function nextValue(index:int):*{
        return modules[index];
    }

    override flash_proxy function getProperty(name:*):*{
        return modules[name];
    }

    override flash_proxy function setProperty(name:*, value:*):void{
        modules[name] = value;
    }
}
}