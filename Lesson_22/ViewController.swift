//
//  ViewController.swift
//  Lesson_22
//
//  Created by Evgeniy Nosko on 11.10.21.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var videoView: UIView!

    var audioPlayer = AVAudioPlayer()
    
    var videoPlayer = AVPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        ЗАПУСК АУДИО!
        guard let audioURL = Bundle.main.url(forResource: "dorofeeva_-_nevesta", withExtension: "mp3") else {
            return
        }
        audioPlayer = (try? AVAudioPlayer(contentsOf:audioURL)) ?? AVAudioPlayer()
        audioPlayer.volume = 0
        
        
//        ЗАПУСК ВИДЕО!
//        guard let url = Bundle.main.url(forResource: "", withExtension: "") else {
//            return
//        }
//        videoPlayer = AVPlayer(url: url)
//
//        let playerLayer = AVPlayerLayer(player: videoPlayer)
//        playerLayer.frame = videoView.bounds
//        videoView.layer.addSublayer(playerLayer)
//
//
//        videoPlayer.play()
    }
    
    @IBAction func startButtonPressed() {
        audioPlayer.play()
        audioPlayer.volume += 0.1

    }

    @IBAction func stopButtonPressed() {
        audioPlayer.pause()
    }
    
    @IBAction func show() {
//        let controller = AVPlayerViewController()
//        controller.player = videoPlayer
//        show(controller, sender: nil)
        
        let url  = URL(string: "applicationType://")!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }


}
