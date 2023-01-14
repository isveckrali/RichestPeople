//
//  ExternalWenLinkView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 14/01/2023.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - PROPERTIES
    let person: Person
    
    // MARK: - BODY
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(person.name, destination: (URL(string: person.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//: HSTACK
        }//: BOX
    }
}

// MARK: - PREVIEW
struct ExternalWenLinkView_Previews: PreviewProvider {
    static let people: [Person] = Bundle.main.decode("people.json")
    static var previews: some View {
        ExternalWebLinkView(person: people[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
