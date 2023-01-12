//
//  CoverImageView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 12/01/2023.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: -PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: -BODY
    var body: some View {
        TabView{
            ForEach(coverImages){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(.page )
        
    }
}

// MARK: -PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
