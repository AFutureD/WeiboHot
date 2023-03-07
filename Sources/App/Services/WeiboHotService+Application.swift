//
//  File.swift
//  
//
//  Created by AFuture on 2023/3/6.
//

import Foundation
import Vapor

public extension Application {
    
    struct WeiboHotSeriveKey: StorageKey {
        public typealias Value = WeiboHotSerive
    }
    
    var weiboHotSerive: WeiboHotSerive {
        get {
            guard let client = self.storage[WeiboHotSeriveKey.self] else {
                fatalError("Not Set")
            }
            return client
        }
        set {
            self.storage.set(WeiboHotSeriveKey.self, to: newValue)
        }
    }
}

public extension Request {
    var weiboHotSerive: WeiboHotSerive {
        get {
            return self.application.weiboHotSerive
        }
    }
}
