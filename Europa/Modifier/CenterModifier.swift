//
//  CenterModifier.swift
//  Europa
//
//  Created by Mehmet Seyhan on 26/01/2023.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}


