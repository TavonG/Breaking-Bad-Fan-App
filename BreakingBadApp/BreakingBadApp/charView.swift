//
//  charView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/11/21.
//

import SwiftUI

struct charView: View {
    var body: some View {
        Text("Characters!")
            .onAppear() {
                Api().getChar()
            }
    }
}

struct charView_Previews: PreviewProvider {
    static var previews: some View {
        charView()
    }
}
