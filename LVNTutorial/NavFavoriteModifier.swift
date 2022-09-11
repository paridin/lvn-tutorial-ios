//
//  NavFavoriteModifier.swift
//  LVNTutorial
//
//  Created by Roberto Estrada on 10/09/22.
//

import SwiftUI
import PhoenixLiveViewNative

struct NavFavoriteModifier: ViewModifier {
  let value: String
  let context: LiveContext<MyRegistry>
  
  func body(content: Content) -> some View {
    content
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button {
            Task {
              try? await context.coordinator.pushEvent(type: "click", event: "toggle-favorite", value: [:])
            }
          } label: {
            Image(systemName: value == "true" ? "star.fill" : "star")
          }
        }
      }
  }
}
