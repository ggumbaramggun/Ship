package {
import com.tnraro.Controller;

import flash.display.Sprite;
import flash.events.Event;

/**
 * ...
 * @author admin@tnraro.com
 */
public class Main extends Sprite {
    private var controller:Controller;

    [Embed(source = "com/tnraro/shipmaps/ships.json", mimeType = "application/octet-stream")]
    private var ShipData:Class;

    public function Main() {
        controller = new Controller();

        init();
    }

    public function init():void {
        controller.addShips(new ShipData().toString());
    }
}
}