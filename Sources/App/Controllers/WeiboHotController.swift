//
//  File.swift
//  
//
//  Created by AFuture on 2023/3/6.
//

import Foundation
import Vapor

public struct WeiboHotController: RouteCollection {
    public func boot(routes: RoutesBuilder) throws {
        
    }
    
    public func getRealTimeHot(req: Request) async -> HTTPStatus {
        
        req.weiboHotSerive
        return .ok
    }
    
}
