//
//  FBLiveAPI.swift
//  FBLiveAPI
//
//  Created by LeeSunhyoup on 2016. 9. 17..
//  Copyright © 2016년 Lee Sun-Hyoup. All rights reserved.
//

import Foundation

enum FBLivePrivacy: StringLiteralType {
    case closed = "SELF"
    case everyone = "EVERYONE"
    case allFriends = "ALL_FRIENDS"
    case friendsOfFriends = "FRIENDS_OF_FRIENDS"
    case custom = "CUSTOM"
}

class FBLiveAPI {
    typealias CallbackBlock = ((Any) -> Void)
    var liveVideoId: String?
    
    static let shared = FBLiveAPI()
    
    func startLive(privacy: FBLivePrivacy, callback: @escaping CallbackBlock) {
        DispatchQueue.main.async {
            if FBSDKAccessToken.current().hasGranted("publish_actions") {
                let path = "/me/live_videos"
                let params = [
                    "privacy": "{\"value\":\"\(privacy.rawValue)\"}"
                ]
                
                let request = FBSDKGraphRequest(
                    graphPath: path,
                    parameters: params,
                    httpMethod: "POST"
                )
                
                _ = request?.start { (_, result, error) in
                    if error == nil {
                        self.liveVideoId = (result as? NSDictionary)?.value(forKey: "id") as? String
                        callback(result)
                    }
                }
            }
        }
    }
    
    func endLive(callback: @escaping CallbackBlock) {
        DispatchQueue.main.async {
            if FBSDKAccessToken.current().hasGranted("publish_actions") {
                guard let id = self.liveVideoId else { return }
                let path = "/\(id)"
                
                let request = FBSDKGraphRequest(
                    graphPath: path,
                    parameters: ["end_live_video": true],
                    httpMethod: "POST"
                )
                
                _ = request?.start { (_, result, error) in
                    if error == nil {
                        callback(result)
                    }
                }
            }
        }
    }
}
