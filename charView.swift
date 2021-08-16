//
//  charView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/11/21.
//

import SwiftUI

struct charView: View {
    
    @State var Characters: [Character] = []
    
    var body: some View {
        List(Characters) { Character in
            Text(Character.name)
            
        }
        .onAppear() {
            Api().getChar { (Characters) in
                self.Characters = Characters
                
                
            }
        }
    }
}


struct charView_Previews: PreviewProvider {
    static var previews: some View {
        charView()
    }
}
