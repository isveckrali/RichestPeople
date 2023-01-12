//
//  ContentView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 11/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: -PROPERTIES
    let people: [Person] = Bundle.main.decode("people.json")
    
    // MARK: -BODY
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(people){ person in
                    NavigationLink(destination: PersonDetailView(person: person)) {
                        PersonListItemView(person: person)
                    }//: LINK
                }//: LOOP
            }//: LIST
            .navigationBarTitle("Sweden", displayMode: .large)
        }//: NAVIGATION
    }
}

// MARK: -PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
