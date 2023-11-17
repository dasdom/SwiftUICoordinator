//  Created by Dominik Hauser on 17.11.23.
//  
//


import SwiftUI

@main
struct SwiftUICoordinatorApp: App {
  let appCoordinator = AppCoordinator()

  var body: some Scene {
    WindowGroup {
      appCoordinator.start()
    }
  }
}
