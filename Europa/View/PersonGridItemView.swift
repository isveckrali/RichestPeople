//
//  PersonGridItemView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 25/01/2023.
//

import SwiftUI

struct PersonGridItemView: View {
    // MARK: - PROPERTIES
    let person: Person
    
    // MARK: - BODY
    var body: some View {
        Image(person.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW
struct PersonGridItemView_Previews: PreviewProvider {
    static let people: [Person] = Bundle.main.decode("people.json")
    
    static var previews: some View {
        PersonGridItemView(person: people[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
