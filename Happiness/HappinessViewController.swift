//
//  HappinessViewController.swift
//  Happiness
//
//  Created by 菜 on 15/7/11.
//  Copyright © 2015年 菜. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource
{
    
    @IBOutlet weak var faceView: FaveView! {
        didSet {
            faceView.dataSource = self
            updateUI()
        }
    }
    
    var happiness: Int = 1 {//1到100之间, 1 sands for sad and 100 stands for happy
        didSet {
            happiness = max(min(happiness, 100), 0)
            print("happiness = \(happiness)")
            updateUI()
        }
    }
    
    func smileForFaceView(sender: FaveView) -> Double? {
        return Double(happiness - 50) / 50
    }
    private func updateUI() {
        faceView.setNeedsDisplay()
    }
}
