//
//  InsetFactView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 13/01/2023.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: -PROPERTIES
    let person: Person
    
    // MARK: -BODY
    var body: some View {
        GroupBox{
            
        }//: BOX
    }
}

// MARK: -PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let people: [Person] = Bundle.main.decode("people.json")
    
    static var previews: some View {
        InsetFactView(person: people[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
