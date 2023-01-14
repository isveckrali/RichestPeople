//
//  PersonDetailView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 12/01/2023.
//

import SwiftUI

struct PersonDetailView: View {
    //MARK: - PROPERTIES
    let person: Person
    
    //MARK: -BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(person.image)
                    .resizable()
                    .scaledToFit()
                //TITLE
                Text(person.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //HEADLINE
                Text(person.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //GALERY
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "money in pictures")
                    InsetGalleryView(person: person)
                }
                
                // FACTS
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(person: person)
                    
                }
                
                //DESCRIPTION
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(person.name)")
                    
                    Text(person.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                //MAP
                Group{
                    HeadingView(headingImage: "map", headingText: "The World")
                    
                    InsetMapView()
                }
                
                //LINK
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWebLinkView(person: person)
                }
                
            }//: VSTACK
            .navigationBarTitle("Learn about \(person.name)", displayMode: .inline)
        }//: SCROLL
    }
}

//MARK: -PREVIEW
struct PersonDetailView_Previews: PreviewProvider {
    static let people: [Person] = Bundle.main.decode("people.json")
    
    static var previews: some View {
        NavigationView{
            PersonDetailView(person: people[0])
        }
        .previewDevice("iProhne 11 Pro")
    }
        
        
}
