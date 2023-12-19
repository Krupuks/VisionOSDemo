//
//  SpaceView.swift
//  FirstApp
//
//  Created by Kevin Van Rooy on 02/12/2023.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SpaceView: View {
    var body: some View {
        RealityView { content in
            if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
    }
}
/*
#Preview {
    SpaceView()
        .previewLayout(.sizeThatFits)
}
*/
