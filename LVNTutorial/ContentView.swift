//
//  ContentView.swift
//  LVNTutorial
//
//  Created by Roberto Estrada on 10/09/22.
//

import SwiftUI
import PhoenixLiveViewNative

struct ContentView: View {
  @State var coordinator: LiveViewCoordinator<MyRegistry> = {
    var config = LiveViewConfiguration()
    config.navigationMode = .enabled
    return LiveViewCoordinator(URL(string: "http://localhost:4000/cats")!, config: config)
  }()
  
  var body: some View {
    LiveView(coordinator: coordinator)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
