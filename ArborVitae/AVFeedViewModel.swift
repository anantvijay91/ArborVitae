//
//  AVFeedViewModel.swift
//  ArborVitae
//
//  Created by Anant Vijay on 03/01/20.
//  Copyright © 2020 Anant Vijay. All rights reserved.
//

import UIKit

enum AVFeedType: Int {
    case AVFeedTypeText = 0
    case AVFeedTypeImage
    case AVFeedTypeVideo
    case AVFeedTypeAudio
    case AVFeedTypeGif
}

enum AVFeedVote: Int {
    case AVFeedVoteUp = 0
    case AVFeedVoteDown
}

class AVFeedViewData: NSObject {
    var profileName: String = ""
    var feedTimeStamp: String = ""
    var feedContentType: AVFeedType?
    var feedContent: String = ""
    var profileAvatar: UIImage?
}

class AVFeedViewModel: NSObject {
    
    func prepareDataSource() {
        
    }

}
