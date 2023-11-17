//  Created by Dominik Hauser on 17.11.23.
//  
//


import SwiftUI

final class AppCoordinator: ObservableObject {
  @Published var path = NavigationPath()
  func push(_ route: Route) {
    path.append(route)
  }

  func pop() {
    path.removeLast()
  }

  struct AppCoordinatorView: View {

    @ObservedObject var coordinator: AppCoordinator

    var body: some View {
      NavigationStack(path: $coordinator.path) {
        ContentView(delegate: coordinator)
          .navigationDestination(for: Route.self, destination: { $0 })
      }
    }
  }

  func start() -> some View {
    AppCoordinatorView(coordinator: self)
  }
}

extension AppCoordinator: ContentViewDelegate {
  func didSelectOne(person: Person) {
    push(.detailsOne(person))
  }
  
  func didSelectTwo(person: Person) {
    push(.detailsTwo(person))
  }
}

protocol Destination: Hashable, Identifiable, View {}

extension Destination {
  var id: String { String(describing: self) }
}

enum Route: Destination {
  case detailsOne(Person)
  case detailsTwo(Person)

  @ViewBuilder var body: some View {
    switch self {
      case .detailsOne(let person):
        DetailsOne(person: person)
      case .detailsTwo(let person):
        DetailsTwo(person: person)
    }
  }
}
