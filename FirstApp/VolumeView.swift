//
//  SpaceView.swift
//  FirstApp
//
//  Created by Kevin Van Rooy on 02/12/2023.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct VolumeView: View {
    var body: some View {
        
        let blackMetal = SimpleMaterial(color: .black, isMetallic: true)
        
        RealityView { content in
            let model = ModelEntity(
                mesh: .generateSphere(radius: 0.1), // Adjusted sphere radius
                materials: [blackMetal])
            
            content.add(model)
            
        }
    }
}
/*
struct VolumeView_Previews: PreviewProvider {
    static var previews: some View {
        VolumeView()
    }
}
*/
