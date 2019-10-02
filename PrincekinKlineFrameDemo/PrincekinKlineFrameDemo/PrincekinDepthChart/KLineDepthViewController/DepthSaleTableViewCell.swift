//
//  DepthSaleTableViewCell.swift
//  Canonchain
//
//  Created by LEE on 4/12/18.
//  Copyright © 2018 LEE. All rights reserved.
//

import UIKit

class DepthSaleTableViewCell: DepthTableViewCell {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    class func returnDepthSaleTableViewCell() -> DepthSaleTableViewCell {
        let cell : DepthSaleTableViewCell = Bundle.main.loadNibNamed("DepthSaleTableViewCell", owner: self, options: nil)?.last as! DepthSaleTableViewCell
        return cell
    }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    
        // Configure the view for the selected state
    }
   
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let backgroundRect = CGRect(x: 0, y: 0, width: frame.width * backgroundPercent, height: frame.height)
        let context = UIGraphicsGetCurrentContext()!
        context.setFillColor(WFSTranslucenceOrangeColor.cgColor)
        context.addRect(backgroundRect)
        context.fillPath()
    }
}
