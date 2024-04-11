//
//  ARManeger.swift
//  ARKitApp
//
//  Created by asmaa gamal  on 11/04/2024.
//

import Foundation
import Combine
class ARManeger{
    static let shared = ARManeger()
    private init(){
        
    }
    var actionStream = PassthroughSubject<ARAction , Never>()
}
