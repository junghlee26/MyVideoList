//
//  Video.swift
//  VIdeoList
//
//  Created by Junghoon Lee on 11/8/18.
//  Copyright © 2018 Junghoon Lee. All rights reserved.
//

import Foundation

struct Video
{
    let authorName: String
    let videoFileName: String
    let description: String
    let thumbnailFileName: String
    
    static func fetchVideos() -> [Video] {
        let v1 = Video(authorName: "Shirley Kim", videoFileName: "v1", description: "This is an example of local video.", thumbnailFileName: "v1")
        let v2 = Video(authorName: "Izayah Anderson", videoFileName: "v2", description: "This is an example of local video.", thumbnailFileName: "v2")
        let v3 = Video(authorName: "Jake Love", videoFileName: "v3", description: "This is an example of local video.", thumbnailFileName: "v3")
        let v4 = Video(authorName: "Angelica Kirby", videoFileName: "v4", description: "This is an example of local video.", thumbnailFileName: "v4")
        let v5 = Video(authorName: "Barbara Shaffer", videoFileName: "v5", description: "This is an example of local video.", thumbnailFileName: "v5")
        let v6 = Video(authorName: "Dallas Hinton", videoFileName: "v6", description: "This is an example of local video.", thumbnailFileName: "v6")
        
        return [v1, v2, v3, v4, v5, v6, v1, v2, v3, v4, v5, v6]
    }
}
