//
//  KeyboardView.swift
//  TestKeuboard
//
//  Created by Albilaga Linggra Pradana on 10/09/20.
//  Copyright © 2020 Albilaga Linggra Pradana. All rights reserved.
//

import SwiftUI

struct KeyboardView: View {
    let controller : UIInputViewController
    @State var text=""
    @State var isTextActive: Bool? = false
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.keyboardAction("Q")
                }) {Text("Q")
                }
                Button(action: {
                    self.keyboardAction("W")
                }) {Text("W")
                }
                Button(action: {
                    self.keyboardAction("E")
                }) {Text("E")
                }
                Button(action: {
                    self.keyboardAction("R")
                }) {Text("R")
                }
                Button(action: {
                    self.keyboardAction("T")
                }) {Text("T")
                }
                Button(action: {
                    self.keyboardAction("Y")
                }) {Text("Y")
                }
            }
            CustomTextField(text: $text, nextResponder: .constant(nil), isResponder: $isTextActive, isSecured: false, keyboard: .default).frame(width: 360, height: 40.0).background(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/)
        }
    }
    
    func keyboardAction(_ text:String) -> Void {
        if isTextActive == true {
            self.text += text
        } else {
           controller.textDocumentProxy.insertText(text)
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
