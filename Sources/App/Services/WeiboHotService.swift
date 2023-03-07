//
//  File.swift
//  
//
//  Created by AFuture on 2023/3/6.
//

import Foundation
import Vapor


enum WEIBO_HOT_ACTION: String {
    static var weiboRoot: String = "m.weibo.cn"
    
    case realTime = ""
    case topicDetail = "sd"
}

public struct WeiboHotSerive {
    
    public let app: Application
    
    init(app: Application) {
        self.app = app
    }
    
    public func getRealTimeHotList() {
        self.app.client.get(WEIBO_HOT_ACTION.realTime.uri)
    }
    
}


extension WEIBO_HOT_ACTION {
    
    var uri: URI {
        return URI(scheme: "https", host: WEIBO_HOT_ACTION.weiboRoot, path: self.rawValue)
    }
}
