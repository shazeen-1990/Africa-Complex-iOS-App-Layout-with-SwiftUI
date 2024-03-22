//
//  InsetFactView.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 19/03/2024.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: properties
    let animal: Animal
    //MARK: body
    
    
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact,id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,idealHeight: 168,maxHeight: 180)
        }//Box
    }
}


//MARK: preview
struct InsetFactView_Previews: PreviewProvider {
  static  let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
