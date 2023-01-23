//
//  GalleryView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 12/01/2023.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - PROPERTIES
    
    // SIMPLE GRID DEFINITION
    let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        }//: SCROLL
        .frame(width: .infinity, height: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - PREIVEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
