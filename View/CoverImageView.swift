//
//  CoverImageView.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 19/03/2024.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: body
    
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//: loop
        }//: tab
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: preview


#Preview {
    CoverImageView()
        //.previewLayout(.fixed(width: 400, height: 300))
}
