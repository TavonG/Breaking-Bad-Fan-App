//
//  CharacterDetailView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct CharacterDetailView: View {
    @StateObject var model = CharacterDetailViewModel()
    let id: Int
    
    var body: some View {
        VStack {
            Text(model.character.name).onAppear {
                model.fetchCharacter(id: id)
            }
            
        }
        
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(id: 0)
    }
}


//Text(model.character.name).onAppear {
//    model.fetchCharacter(id: id)
//}
