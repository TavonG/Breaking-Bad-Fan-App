//
//  CharactersView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct CharactersView: View {
    @EnvironmentObject var model:
        CharactersViewModel
    
    
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    
                }
            }
        }
        
//        model.fetchCharacter()
    }
    
    var grid: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 200), spacing: 4)], spacing: 34) {
            ForEach(model.characters) { _ in
                CharactersView(character: character)
            }
        }
        
        .padding(.horizontal, 5)
        .padding(.vertical, 30)
    }
    
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView().previewLayout(.fixed(width: 130, height: 150))
    }
}
