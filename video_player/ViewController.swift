//
//  ViewController.swift
//  video_player
//
//  Created by Alec Jones on 1/11/25.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo();
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else {
            
            debugPrint( "Couldn't find video")
            
            return
        }
       
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        
        playerController.player = player
        
        present(playerController, animated: true){
            player.play()
        }
    }
    
}

