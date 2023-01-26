//
//  CreditsView.swift
//  Europa
//
//  Created by Mehmet Seyhan on 26/01/2023.
//

import SwiftUI

struct CreditsView: View {
    
    // MARK: - BODY
    var body: some View {
        VStack{
            Image(systemName: "globe.europe.africa.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
                 CopyRight @ Mehmet Can Seyhan
                 All right reserved
                 Udemig comes from the future
                """)
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding()
                .opacity(0.4)
        }//: VSTACK
    }
}

// MARK: - PREVIEW
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
