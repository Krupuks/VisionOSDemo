import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
        VStack() {
            ZStack(){
                
                Circle().opacity(0.25)
                Text("Mijn \n VisionOS \n demo")
                    .multilineTextAlignment(.center)
            }.padding(.bottom, 60.0)

            VStack() {
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
                
                NavigationLink(destination: SpaceView()) {
                    Text("Space")
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }.padding(.bottom, 50.0)
            }.navigationBarTitle("Navigation")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
