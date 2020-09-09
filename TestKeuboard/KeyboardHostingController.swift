//
//  KeyboardHostingController.swift
//  TestKeuboard
//
//  Created by Albilaga Linggra Pradana on 10/09/20.
//  Copyright © 2020 Albilaga Linggra Pradana. All rights reserved.
//

import SwiftUI

public class KeyboardHostingController<Content: View>: UIHostingController<Content> {
    
    public func add(to controller: UIInputViewController) {
        controller.addChild(self)
        controller.view.addSubview(view)
        didMove(toParent: controller)
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: controller.view.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: controller.view.trailingAnchor).isActive = true
        view.topAnchor.constraint(equalTo: controller.view.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: controller.view.bottomAnchor).isActive = true
    }
}
