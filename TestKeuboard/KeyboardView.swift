//
//  KeyboardView.swift
//  TestKeuboard
//
//  Created by Albilaga Linggra Pradana on 10/09/20.
//  Copyright © 2020 Albilaga Linggra Pradana. All rights reserved.
//

import SwiftUI

struct KeyboardView: View {
    let controller : KeyboardViewController
    @State var text = ""
    @State var text2 = ""
    @State var isTextActive: Bool? = false
    @State var isText2Active: Bool? = false
    
    @State var isExtendedMode = false
    
    var body: some View {
        keyboardView
    }
    
    func keyboardAction(_ text:String) -> Void {
        if isTextActive == true {
            self.text += text
        } else if isText2Active == true {
            self.text2 += text
        } else {
            controller.textDocumentProxy.insertText(text)
        }
    }
    
    
}

private extension KeyboardView {
    func normalView() -> some View {
        VStack{
            standardButton()
            
            CustomTextField(text: $text, nextResponder: $isText2Active, isResponder: $isTextActive, isSecured: false, keyboard: .default).frame(width: 360, height: 40.0).background(Color.white)
            
            CustomTextField(text: $text2, nextResponder: .constant(nil), isResponder: $isText2Active, isSecured: false, keyboard: .default).frame(width: 360, height: 40.0).background(Color.white)
            
            Button(action: {
                self.changeMode()
            }){ Text("Change Mode")
            }
        }
    }
    
    func extendedView() -> some View {
        VStack{
            standardButton()
            
            CustomTextField(text: $text, nextResponder: $isText2Active, isResponder: $isTextActive, isSecured: false, keyboard: .default).frame(width: 360, height: 40.0).background(Color.white)
            
            CustomTextField(text: $text2, nextResponder: .constant(nil), isResponder: $isText2Active, isSecured: false, keyboard: .default).frame(width: 360, height: 40.0).background(Color.white)
            
            Button(action: {
                self.changeMode()
            }){ Text("Change Mode")
            }
            
            Text("Another Text")
            
            Text("Another Text #2")
        }
    }
    
    func standardButton() -> some View {
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
    }
    
    func changeMode() {
        self.isExtendedMode = !self.isExtendedMode
        controller.resetViewSize()
    }
    
    var keyboardView: AnyView{
        if self.isExtendedMode {
            return AnyView(extendedView())
        } else {
            return AnyView(normalView())
        }
    }
    
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
