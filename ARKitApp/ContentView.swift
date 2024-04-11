//
//  ContentView.swift
//  ARKitApp
//
//  Created by asmaa gamal  on 11/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var colors: [Color] = [.green , .red , .pink]
    var body: some View {
        ARViewRepresentable().ignoresSafeArea()
            .overlay(alignment: .bottom) {
                ScrollView(.horizontal){
                    HStack{
                        Button{
                            ARManeger.shared.actionStream.send(.removeAllBoxes)
                        }label: {
                            Image(systemName: "trash")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40,height: 40)
                                .padding()
                                .background(.regularMaterial)
                                .cornerRadius(16)
                        }
                        ForEach(colors , id:\.self){color in
                            
                            Button{
                                ARManeger.shared.actionStream.send(.replaceBox(color: color))
                            }label: {
                                color
                                    .scaledToFit()
                                    .frame(width: 40,height: 40)
                                    .padding()
                                    .cornerRadius(16)
                            }
                        }
                  
                    }
                }
            }
    }
    
    
}

#Preview {
    ContentView()
}
