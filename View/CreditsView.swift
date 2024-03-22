//
//  CreditsView.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 21/03/2024.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128,height: 128)
            Text("""
    Copyright @ Robert Petras
    All rights reserved
    Better apps ♥️ Less Code
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }//vstack
        .padding()
        .opacity(0.4)
    }
}




struct CreditsView_Previews: PreviewProvider {
    
    
    static var previews: some View{
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
