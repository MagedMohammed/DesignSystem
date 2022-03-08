//
//  View.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 08/03/2022.
//

import UIKit

class AdamView: UIView {
    
    @IBInspectable var style: String = "" {
        didSet {
            guard let state = SDVStates(rawValue: style) else { return }
            self.layer.borderColor = state.view.layer.borderColor
            self.layer.borderWidth = state.view.layer.borderWidth
            self.backgroundColor = state.view.backgroundColor
            
        }
    }
    
    
    @IBInspectable var shadow: String = "" {
        didSet {
            guard let shadow = SDShadow(rawValue:shadow) else
            { return }
            self.layer.shadowColor = shadow.color
            self.layer.shadowOpacity = shadow.shadowOpacity
            self.layer.shadowRadius = shadow.shadowRadius
            self.layer.shadowOffset = shadow.shadowOffset
        }
    }
    
    @IBInspectable var stroke: String = "" {
        didSet {
            if stroke == "dashed"{
                //wLdVc
//                self.layer.borderColor = UIColor(patternImage: UIImage(named: "wLdVc")!).cgColor
//                self.layer.borderWidth = 2
                self.dashedBorder()
            }else{
                guard let stroke = SDStroke(rawValue: stroke) else { return }
                self.layer.borderColor = stroke.borderColor
                self.layer.borderWidth = stroke.borderWidth
            }
        }
    }
    
    @IBInspectable var radius: String = "" {
        didSet {
            guard let value = SDRadius(rawValue: radius)?.radius(view: self) else{ return }
            self.layer.cornerRadius = value
//            self.layer.masksToBounds = true
        }
    }
    
    func dashedBorder(){
        let color = UIColor(red: 0.808, green: 0.831, blue: 0.855, alpha: 1).cgColor
        let shapeLayer:CAShapeLayer = CAShapeLayer()
        let frameSize = self.frame.size
        let shapeRect = CGRect(x: 0, y: 0, width: frameSize.width, height: frameSize.height)
        shapeLayer.bounds = shapeRect
        shapeLayer.position = CGPoint(x: frameSize.width/2, y: frameSize.height/2)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = color
        shapeLayer.lineWidth = 2
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        shapeLayer.lineDashPattern = [6,3]
        shapeLayer.path = UIBezierPath(roundedRect: shapeRect, cornerRadius: 4).cgPath
        self.layer.addSublayer(shapeLayer)
    }
    
}
