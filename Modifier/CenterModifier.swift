//
//  CenterModifier.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 21/03/2024.
//

import SwiftUI

struct CenterModifier: ViewModifier{
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
