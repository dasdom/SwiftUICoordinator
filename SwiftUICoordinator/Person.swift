//  Created by Marvin Lee Kobert on 15.11.23.
//
//

import Foundation

struct Person {
  let name: String
  let age: Int
}

extension Person: Hashable {}

extension Person {
  static let example = Person(name: "John Doe", age: 47)
}
