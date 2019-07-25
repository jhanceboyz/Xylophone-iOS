

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player : AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let Index: Int = sender.tag
        let filename = "note" + String(Index)
        let fileurl = Bundle.main.url(forResource: filename, withExtension: "wav")
                   do{
                        try player = AVAudioPlayer(contentsOf: fileurl!)
                        player?.play()
                    }
                    catch{
                        print("error Playing file")
                    }
        }

}
