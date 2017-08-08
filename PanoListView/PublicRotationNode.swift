//
//  PublicRotationNode.swift
//  PanoListView
//
//  Created by Amy on 2017/8/8.
//  Copyright © 2017年 Amy. All rights reserved.
//

import Foundation
import MetalScope

class PublicRotationNode {
    static let shareInstance = PublicRotationNode()
    
    var orientationNode: OrientationNode = {
        let node = OrientationNode()
        let mask = CategoryBitMask.all.subtracting(.rightEye)
        node.pointOfView.camera?.categoryBitMask = mask.rawValue
        return node
    }()
    
    
    
    
    
    
}
