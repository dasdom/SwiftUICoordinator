//  Created by Dominik Hauser on 17.11.23.
//  
//


import SwiftUI

protocol ContentViewDelegate {
  func didSelectOne(person: Person)
  func didSelectTwo(person: Person)
}

struct ContentView: View {

  let delegate: ContentViewDelegate
  let person = Person(name: "Dummy Foo", age: 23)

  var body: some View {
    VStack {
      Button("One") {
        delegate.didSelectOne(person: person)
      }
      Button("Two") {
        delegate.didSelectTwo(person: person)
      }
    }
    .padding()
  }
}
