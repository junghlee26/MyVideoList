//
//  VideoTableViewController.swift
//  VIdeoList
//
//  Created by Junghoon Lee on 11/8/18.
//  Copyright © 2018 Junghoon Lee. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoTableViewController: UITableViewController {
    
    var videos: [Video] = Video.fetchVideos()
    var player = AVPlayer()
    var playerViewController = AVPlayerViewController()
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoTableViewCell
        let video = videos[indexPath.row]
        
        cell.video = video
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        videoPlayer(at: indexPath)
    }
    
    func videoPlayer(at indexPath: IndexPath) {
        let selectedVideo = videos[indexPath.row]
        let videoPath = Bundle.main.path(forResource: selectedVideo.videoFileName, ofType: "mp4")
        let selectedVideoUrl = URL(fileURLWithPath: videoPath!)
        player = AVPlayer(url: selectedVideoUrl)
        playerViewController.player = player
        
        self.present(playerViewController, animated: true, completion: {
            self.playerViewController.player?.play()
        })
    }
}



