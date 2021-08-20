//
//  CharactersView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct CharactersView: View {
    @StateObject var model = CharactersViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 50,
                content: {
                    ForEach(model.characters) { character in
                        NavigationLink(
                            destination: CharacterDetailView(id: character.id),
                           
                            label: {
                                VStack {
                                    ImageWithURL(character.image)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 75, height: 75)
                                        .clipped()
                                    Text(character.name)
                                }
                            }).buttonStyle(PlainButtonStyle())
                    }
                })
        }.onAppear {
            model.fetchCharacters()
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
