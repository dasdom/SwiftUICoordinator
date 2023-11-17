//  Created by Dominik Hauser on 17.11.23.
//  
//


import SwiftUI

struct DetailsTwo: View {
  let person: Person
  var body: some View {
    Text(person.name)
      .padding()
      .background(Color.blue)
  }
}

#Preview {
  DetailsTwo(person: .example)
}
