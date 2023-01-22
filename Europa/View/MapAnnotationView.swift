//
//  MapAnnotationView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 22/01/2023.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - PROPERTIES
    var location: FamousPeopleLocation
    @State private var animation: Double = 0.0
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 54, height: 54, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity( 1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
            
        }//: ZSTACK
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: false)){
                animation = 1
            }
        }
    }
}

// MARK: - PREVIEW
struct MapAnnotationView_Previews: PreviewProvider {
    static var locations: [FamousPeopleLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
