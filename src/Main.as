package {
import com.tnraro.Controller;
import com.tnraro.ShipData;
import com.tnraro.activity.InGame;
import com.tnraro.ships.ShipError;

import flash.display.Sprite;
import flash.events.Event;

/**
 * ...
 * @author admin@tnraro.com
 */
public class Main extends Sprite {
    [Embed(source = "embeds/ships.json", mimeType = "application/octet-stream")]
    private var Ships:Class;
    
    private var inGame:InGame;
    
    public function Main() {

        init();
    }

    public function init():void {
        try{
            ShipData.addShips(new Ships().toString());
        }catch(e:ShipError){
            trace('ShipError #'+e.errorID, e.message);
        }
        
        inGame = new InGame();
        
        // dev
        inGame.init();
        inGame.free();
    }
}
}