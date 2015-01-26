package {
import com.tnraro.Controller;
import com.tnraro.ships.ShipError;

import flash.display.Sprite;
import flash.events.Event;

/**
 * ...
 * @author admin@tnraro.com
 */
public class Main extends Sprite {
    private var controller:Controller;

    [Embed(source = "embeds/ships.json", mimeType = "application/octet-stream")]
    private var ShipData:Class;

    public function Main() {
        controller = new Controller();

        init();
    }

    public function init():void {
        try{
            controller.addShips(new ShipData().toString());
        }catch(e:ShipError){
            trace('ShipError #'+e.errorID, e.message);
        }
    }
}
}