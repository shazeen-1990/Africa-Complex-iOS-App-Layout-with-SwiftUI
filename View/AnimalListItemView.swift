//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 19/03/2024.
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: properties
    let animal: Animal
    
    
    //MARK: body
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 16){
            
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment:.leading, spacing: 8){
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }//Vstack
        }//: Hstack
    }
}


//MARK: preview

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        // Decode sample Animal data from "animals.json"
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // Provide a sample Animal for preview
        return AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
