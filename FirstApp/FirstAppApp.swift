//
//  FirstAppApp.swift
//  FirstApp
//
//  Created by Kevin Van Rooy on 30/11/2023.
//

import SwiftUI

@main
struct FirstAppApp: App {
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
        
        ImmersiveSpace(id: "ImmersiveSpace") {
            SpaceView()
        }
    }
}
