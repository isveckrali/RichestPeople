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
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toobarIcon: String = "square.grid.2x2"
    
    //: MARK - FUNCTIONS
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("Grid Number: \(gridColumn)")
        
        // TOOLBAR INAGE
        switch gridColumn{
        case 1:
            toobarIcon = "square.grid.2x2"
        case 2:
            toobarIcon = "square.grid.3x2"
        case 3:
            toobarIcon = "rectangle.grid.1x2"
        default:
            toobarIcon = "square.grid.2x2"
        }
        
    }
    
    // MARK: -BODY
    var body: some View {
        NavigationView{
            Group{
                if !isGridViewActive {
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
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(people) { person in
                                PersonGridItemView(person: person)
                            } //: LOOP
                        } //: GRID
                        .padding(10)
                        .animation(.easeIn)
                    }//: SCROLL
                }//: CONDITION
            } //: GROUP
            .navigationBarTitle("Sweden", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16){
                        // LIST
                        Button {
                            print("List view is activated")
                            isGridViewActive = false
                            haptics.impactOccurred()
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        
                        // GRID
                        Button {
                            print("Grid view is activated")
                            isGridViewActive = true
                            haptics.impactOccurred()
                            gridSwitch()
                        } label: {
                            Image(systemName: toobarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }

                    }
                }
            }
        }//: NAVIGATION
    }
}

// MARK: -PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
