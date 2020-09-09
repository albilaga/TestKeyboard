//
//  UIInputViewController+Extensions.swift
//  TestKeuboard
//
//  Created by Albilaga Linggra Pradana on 10/09/20.
//  Copyright © 2020 Albilaga Linggra Pradana. All rights reserved.
//

import SwiftUI

public extension UIInputViewController {
    
    /**
     Remove all subviews then add a `SwiftUI` view that pins
     to the edges and resizes the extension to fit the view.
     
     When this function is called, the input vc will convert
     its `keyboardContext` to an `ObservableKeyboardContext`
     and provide it to the view as an `@EnvironmentObject`.
     
     It will also provide the `SystemKeyboardStyle.standard`
     style to the view as an `@EnvironmentObject`, to ensure
     that a standard system keyboard style is defined if you
     want to create system keyboards. You can change this by
     just injecting another style after this has been done.
     */
    func setup<Content: View>(with view: Content) {
        self.view.subviews.forEach { $0.removeFromSuperview() }       
        let controller = KeyboardHostingController(rootView: view)
        controller.add(to: self)
    }
}

