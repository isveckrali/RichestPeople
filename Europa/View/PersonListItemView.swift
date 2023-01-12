//
//  PersonListItemView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 12/01/2023.
//

import SwiftUI

struct PersonListItemView: View {
    
    // MARK: -PROPERTIES
    let person: Person
    
    // MARK: -BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(person.image)
                .resizable()
                .scaleEffect()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(person.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(person.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } //: VSTACK
        } //: HSTACK
    }
}

// MARK: -PREVIEW
struct PersonListItemView_Previews: PreviewProvider {
    static let people: [Person] = Bundle.main.decode("people.json")

    static var previews: some View {
        PersonListItemView(person: people[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
