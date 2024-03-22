//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 19/03/2024.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static  let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
