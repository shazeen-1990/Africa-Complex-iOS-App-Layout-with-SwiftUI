//
//  GalleryView.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 19/03/2024.
//

import SwiftUI

struct GalleryView: View {
    //MARK: properties
    @State private var selectedAnimal: String = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
//simple grid definition
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    
//    ]
  //efficient grid definition
  //  let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    //dynamic grid layout
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
    
            VStack(alignment: .center, spacing: 30) {
                //MARK: image
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 8))
                
                //MARK: slider
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn, perform: { value in
                        gridSwitch()
                    })
                
                
                //MARK: grid
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 30) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth: 8))
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                    }//loop
                }//grid
                .animation(.easeIn)
                .onAppear(perform: {
                    gridSwitch()
                })
            }//vstack
            .padding(.horizontal,10)
            .padding(.vertical,50)
        }//scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
