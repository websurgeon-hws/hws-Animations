//
//  Copyright © 2019 Peter Barclay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false

    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    self.isShowingRed.toggle()
                }
            }

            if self.isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
//                    .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
