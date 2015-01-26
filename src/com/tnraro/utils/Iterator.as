/**
 * Created by tnraro on 15/01/07.
 */
package com.tnraro.utils {
import flash.utils.flash_proxy;
import flash.utils.Proxy;

public class Iterator extends Proxy{
    private var _:Array;

    /**
     * 반복자
     * @param o 반복시킬 대상 객채입니다.
     * @param propertyName 접근할 속성을 선택합니다. (기본값은 null입니다.)
     */
    public function Iterator(o:*, propertyName:String=null) {
        var v:*;
        if(propertyName == null){
            _ = o.concat();
        }else{
            _ = [];

            for each(v in o){
                _.push(v.comp(propertyName));
            }
        }
    }
    override flash_proxy function callProperty(name:*, ...rest):*{
        return this[name.toString()].apply(this, rest);
    }

    override flash_proxy function nextName(index:int):String{
        return (index-1).toString();
    }

    override flash_proxy function nextNameIndex(index:int):int{
        if(index < _.length){
            return index+1;
        }else{
            return 0;
        }
    }

    override flash_proxy function nextValue(index:int):*{
        return _[index-1];
    }

    override flash_proxy function getProperty(name:*):*{
        return _[name];
    }

    override flash_proxy function setProperty(name:*, value:*):void{
        _[name] = value;
    }
}
}
