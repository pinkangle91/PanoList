//
//  PanoTableViewCell.swift
//  PanoListView
//
//  Created by Amy on 2017/7/14.
//  Copyright © 2017年 Amy. All rights reserved.
//

import UIKit
import MetalScope
import Metal

class PanoTableViewCell: UITableViewCell {

    var panoView:PanoramaView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        guard let device = MTLCreateSystemDefaultDevice() else {
            fatalError("MetalScope require Metal")
        }
        
        panoView = PanoramaView(frame: self.contentView.frame, device: device)
        panoView.orientationNode  = PublicRotationNode.shareInstance.orientationNode
        self.contentView.addSubview(panoView)
        
    
        
        }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadPanoImage(image:UIImage){
        panoView.load(image, format: .mono)
        panoView.frame = self.contentView.frame
        panoView.frame.size.height = 120
    }

}
