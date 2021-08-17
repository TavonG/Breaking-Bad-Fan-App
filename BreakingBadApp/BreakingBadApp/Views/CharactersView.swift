//
//  CharactersView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct CharactersView: View {
    
    let Columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    
    ]
    
    
    var body: some View {
        ScrollView {
            
            LazyVGrid(
                columns: Columns,
                alignment: .center,
                spacing: 50,
                pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/,
                content: {
                    Section(header:
                                Text("Breaking Bad Fans")
                                .foregroundColor(.red)
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.white)
                                .padding()
                    ) {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                        
                    
                })
            }
            
            
        




            
        }

    }
    


struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
