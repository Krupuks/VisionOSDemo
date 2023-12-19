//
//  WindowView.swift
//  FirstApp
//
//  Created by Kevin Van Rooy on 02/12/2023.
//

import SwiftUI

struct WindowView: View {
    @State var name = ""
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .padding(.horizontal, 20)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.top, 50)
            
            Text("Hello \(name)").font(.title).padding(.top, 20)
        }
    }
/*
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            WindowView()
        }
    }
}
*/
