//
//  MusicPlayer.swift
//  NationUp
//
//  Created by Revarino Putra on 02/05/21.
//

import Foundation
import AVFoundation

class MusicPlayer {
    static let shared = MusicPlayer()
    var player: AVAudioPlayer?
    
    func startMusic(audio: String) {
        let urlString = Bundle.main.path(forResource: audio, ofType: "mp3")
        
        do {
            try AVAudioSession.sharedInstance().setMode(.default)
            try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
            
            guard let urlString = urlString else { return }
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
            
            guard let player = player else { return }
            player.numberOfLoops = -1
            player.prepareToPlay()
            player.play()
        } catch {
            print("Error when playin' sound")
        }
    }
    
    func pauseMusic() {
        guard let player = player else { return }
        player.pause()
    }
    
    func resumeMusic() {
        guard let player = player else { return }
        player.play()
    }
    
}
