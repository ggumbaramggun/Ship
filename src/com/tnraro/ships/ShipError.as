/**
 * Created by tnraro on 15. 1. 26.
 */
package com.tnraro.ships {
public class ShipError extends Error {
    public function ShipError(message:* = "", id:* = 0) {
        super(message, id);
    }
}
}
