/**
 * Created by tnraro on 15. 1. 26.
 */
package com.tnraro.ships {
public class ShipError extends Error {
    /**
     * Ship Error
     * @param message Error messages
     * @param id Error no
     */
    public function ShipError(message:* = "", id:* = 0) {
        super(message, id);
    }
}
}
