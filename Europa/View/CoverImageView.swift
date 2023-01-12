//
//  CoverImageView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 12/01/2023.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: -PROPERTIES
    
    // MARK: -BODY
    var body: some View {
        TabView{
            ForEach(0 ..< 5){ item in
                Image("cover-elon")
                    .resizable()
                    .scaledToFit()
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
