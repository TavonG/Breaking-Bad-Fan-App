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
        VStack(alignment: .leading) {
            character(image: model.character.image)
            Text(model.character.name)
                .font(.title)
            
            Text(model.character.nickname)
                .font(.title2)
                .foregroundColor(.secondary)
            
            Text("Status")
                .font(.title2)
            
            
            Text(model.character.status)
                .font(.title3)
                .foregroundColor(.secondary)
        }.onAppear {
            model.fetchCharacter(id: id)
        }
        
    }
    
    func character(image: String) -> some View {
        if !image.isEmpty {
            return AnyView(ImageWithURL(image)
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipped())
        }
        return AnyView(EmptyView())
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
