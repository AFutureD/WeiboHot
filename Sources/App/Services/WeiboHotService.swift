//
//  File.swift
//  
//
//  Created by AFuture on 2023/3/6.
//

import Foundation
import Vapor


public struct WeiboHotSerive {
    public let app: Application
    
    init(app: Application) {
        self.app = app
    }
    
    public func hhh() {
        self.app.clients
    }
    
}
