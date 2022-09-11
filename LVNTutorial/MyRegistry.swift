//
//  MyRegistry.swift
//  LVNTutorial
//
//  Created by Roberto Estrada on 10/09/22.
//

import SwiftUI
import PhoenixLiveViewNative


struct MyRegistry: CustomRegistry{
  enum TagName: String {
    case catRating = "cat-rating"
  }
  typealias AttributeName = EmptyRegistry.None
  
  static func lookup(_ name: TagName, element: Element, context: LiveContext<MyRegistry>) -> some View {
    switch name {
    case .catRating:
      CatRatingView(element: element, context: context)
    }
  }
}
