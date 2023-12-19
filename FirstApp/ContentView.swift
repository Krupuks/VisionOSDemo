import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State var showImmersiveSpace = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Circle().opacity(0.25)
                    Text("Mijn \n VisionOS \n demo")
                        .multilineTextAlignment(.center)
                }
                .padding(.all, 20.0)

                VStack {
                    NavigationLink(destination: WindowView()) {
                        Text("Window")
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: VolumeView()) {
                        Text("Volume")
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        // Toggle the immersive space view
                        showImmersiveSpace.toggle()
                        Task {
                            if showImmersiveSpace {
                                await openImmersiveSpace(id: "ImmersiveSpace")
                            } else {
                                await dismissImmersiveSpace()
                            }
                        }
                    }) {
                        Text("Space")
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.bottom, 50.0)
            }
            .navigationBarTitle("Navigation")
        }
    }
}
/*
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
