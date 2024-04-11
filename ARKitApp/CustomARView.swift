//
//  CustomARView.swift
//  ARKitApp
//
//  Created by asmaa gamal  on 11/04/2024.
//

import ARKit
import RealityKit
import SwiftUI
import Combine
class CustomARView:ARView{
    required init(frame framRec:CGRect){
        super.init(frame:framRec )
    }
    convenience init(){
        self.init(frame: UIScreen.main.bounds )
        subscrip()
       
    }
    
    dynamic  required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private var cancelabels: Set<AnyCancellable> = []
    
    func subscrip(){
        ARManeger.shared.actionStream.sink{ [weak self] action in
            switch action{
            case .removeAllBoxes:
                self?.scene.anchors.removeAll()
            case .replaceBox(let color):
                self?.placeBox(color: color)
            }
            
        }.store(in: &cancelabels)
    }
    func placeBox(color:Color){
        let block = MeshResource.generateBox(size: 0.3)
        let material = SimpleMaterial(color: UIColor(color) , isMetallic: false)
        let entity = ModelEntity(mesh: block, materials: [material])
        let anchor = AnchorEntity(plane: .horizontal)
        anchor .addChild(entity)
        scene.addAnchor(anchor)
    }
    
}
