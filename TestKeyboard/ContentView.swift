//
//  ContentView.swift
//  TestKeyboard
//
//  Created by Albilaga Linggra Pradana on 09/09/20.
//  Copyright © 2020 Albilaga Linggra Pradana. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var text = ""

    var body: some View {
        TextField("Test", text: self.$text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
