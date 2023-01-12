//
//  InsetGaleryView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 13/01/2023.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    let person: Person
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(person.gallery, id: \.self){ item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //: SCROLL
    }
}

// MARK: PREVIEW
struct InsetGalleryView_Previews: PreviewProvider {
    static let people: [Person] = Bundle.main.decode("people.json")
    
    static var previews: some View {
        InsetGalleryView(person: people[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
