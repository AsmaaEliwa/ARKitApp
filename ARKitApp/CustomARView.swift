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
        placeBox()
    }
    
    dynamic  required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func placeBox(){
        let block = MeshResource.generateBox(size: 0.3)
        let material = SimpleMaterial(color: .blue , isMetallic: false)
        let entity = ModelEntity(mesh: block, materials: [material])
        let anchor = AnchorEntity(plane: .horizontal)
        anchor .addChild(entity)
        scene.addAnchor(anchor)
    }
    
}
