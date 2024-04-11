//
//  ARViewRepresentable.swift
//  ARKitApp
//
//  Created by asmaa gamal  on 11/04/2024.
//

import Foundation
import SwiftUI
struct ARViewRepresentable:UIViewRepresentable{
    func makeUIView(context: Context) -> CustomARView {
        return CustomARView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
