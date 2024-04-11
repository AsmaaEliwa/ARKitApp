//
//  CustomARView.swift
//  ARKitApp
//
//  Created by asmaa gamal  on 11/04/2024.
//

import ARKit
import RealityKit
import SwiftUI

class CustomARView:ARView{
    required init(frame framRec:CGRect){
        super.init(frame:framRec )
    }
    convenience init(){
        self.init(frame: UIScreen.main.bounds )
    }
    
    dynamic  required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
