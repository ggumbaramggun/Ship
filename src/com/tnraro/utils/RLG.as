/**
 * Created by tnraro on 15/01/07.
 */
package com.tnraro.utils {
public class RLG {
    public static function get info():String{
        var a:Array = [
                '## RLG (Random Loliname Generator) ##',
                'version 0.0.1',
                'C. tnraro.com 2015 All rights reserved.'
        ];
        return a.join('\n');
    }

    private static const A:Array = [
            [   // 0 1
                '귀여운',
                '단아한',
                '섹시한',
                '청순한',
                '벙찐',
                '츤데레',
                '얀데레',
                '헤타레',
                '덜렁이',
                '불량한'
            ],[   // 1 2
                '트윈테일','단발머리',
                '안경잡이',
                '세일러복',
                '수영복','비키니','스쿨미즈',
                '와이셔츠','에이프런',
                '기모노','유카타',
                '스타킹'
            ],[   // 2 4
                '로리콘','브로니',
                '아가씨',
                '로리','고스로리',
                '소녀','소년',
                '오타쿠','부녀자'
            ]

    ];

    private static const types:Array = [
            [0,1,2],
            [0,2],
            [1,2]
    ];

    public static function generate():String{
        var type:Array = rand(types);

        var r:Array = [];
        for each(var i:int in type){
            r.push( rand(A[i]) );
        }
        return r.join(' ');
    }

    private static function rand(a:Array):*{
        var l:int = a.length;
        return a[Math.floor(Math.random()*l)];
    }
}
}