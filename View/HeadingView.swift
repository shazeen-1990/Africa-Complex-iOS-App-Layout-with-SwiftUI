//
//  HeadingView.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 19/03/2024.
//

import SwiftUI

struct HeadingView: View {

    //MARK: properties
    
    var headingImage: String
    var headingText: String
    
    //MARK: body
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}


//MARK: preview

struct HeadingView_Previews: PreviewProvider{
    
    static var previews: some View{
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
