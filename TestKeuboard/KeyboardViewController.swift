//
//  KeyboardViewController.swift
//  TestKeuboard
//
//  Created by Albilaga Linggra Pradana on 09/09/20.
//  Copyright © 2020 Albilaga Linggra Pradana. All rights reserved.
//

import SwiftUI

class KeyboardViewController: UIInputViewController {

//    @IBOutlet var nextKeyboardButton: UIButton!
    
//    override func updateViewConstraints() {
//        super.updateViewConstraints()
//
//        // Add custom view sizing constraints here
//    }
    
    var keyboardView: some View {
        KeyboardView(controller: self)
    }
    
    public func resetViewSize() {
//        keyboardView.
        self.updateViewConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup(with: keyboardView)
        
//        // Perform custom UI setup here
//        self.nextKeyboardButton = UIButton(type: .system)
//
//        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), for: [])
//        self.nextKeyboardButton.sizeToFit()
//        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
//
//        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
//
//        self.view.addSubview(self.nextKeyboardButton)
//
//        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
//        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
//
//        let buttonTitles = ["Q", "W", "E", "R", "T", "Y"]
//        let buttons = createButtons(buttonTitles)
//        let topRow = UIView(frame: CGRect(x:0, y:0, width:320, height:  40))
//
//        for button in buttons {
//            topRow.addSubview(button)
//        }
//
//        self.view.addSubview(topRow)
//
//        addConstraints(buttons, containingView: topRow)
    }
    
//    func createButtons(_ titles: [String]) -> [UIButton] {
//
//        var buttons = [UIButton]()
//
//        for title in titles {
//            let button = UIButton(type: .system) as UIButton
//            button.setTitle(title, for: .normal)
//            button.translatesAutoresizingMaskIntoConstraints = false
//            button.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
//            button.setTitleColor(.darkGray, for: .normal)
//            button.addTarget(self, action: #selector(keyPressed(_:)), for: .touchUpInside)
//            buttons.append(button)
//        }
//
//        return buttons
//    }
//
//    @objc func keyPressed(_ button: UIButton) {
//        if let title = button.title(for: .normal){
//            (textDocumentProxy as UIKeyInput).insertText(title)
//        }
//    }
//
//    func addConstraints(_ buttons: [UIButton], containingView: UIView){
//
//        for (index, button) in buttons.enumerated() {
//
//            let topConstraint = NSLayoutConstraint(item: button, attribute: .top, relatedBy: .equal, toItem: containingView, attribute: .top, multiplier: 1.0, constant: 1)
//
//            let bottomConstraint = NSLayoutConstraint(item: button, attribute: .bottom, relatedBy: .equal, toItem: containingView, attribute: .bottom, multiplier: 1.0, constant: -1)
//
//            var leftConstraint : NSLayoutConstraint!
//
//            if index == 0 {
//
//                leftConstraint = NSLayoutConstraint(item: button, attribute: .left, relatedBy: .equal, toItem: containingView, attribute: .left, multiplier: 1.0, constant: 1)
//
//            }else{
//
//                leftConstraint = NSLayoutConstraint(item: button, attribute: .left, relatedBy: .equal, toItem: buttons[index-1], attribute: .right, multiplier: 1.0, constant: 1)
//
//                let widthConstraint = NSLayoutConstraint(item: buttons[0], attribute: .width, relatedBy: .equal, toItem: button, attribute: .width, multiplier: 1.0, constant: 0)
//
//                containingView.addConstraint(widthConstraint)
//            }
//
//            var rightConstraint : NSLayoutConstraint!
//
//            if index == buttons.count - 1 {
//
//                rightConstraint = NSLayoutConstraint(item: button, attribute: .right, relatedBy: .equal, toItem: containingView, attribute: .right, multiplier: 1.0, constant: -1)
//
//            }else{
//
//                rightConstraint = NSLayoutConstraint(item: button, attribute: .right, relatedBy: .equal, toItem: buttons[index+1], attribute: .left, multiplier: 1.0, constant: -1)
//            }
//
//            containingView.addConstraints([topConstraint, bottomConstraint, rightConstraint, leftConstraint])
//        }
//    }
    
//    override func viewWillLayoutSubviews() {
////        self.nextKeyboardButton.isHidden = !self.needsInputModeSwitchKey
////        super.viewWillLayoutSubviews()
//    }
//
//    override func textWillChange(_ textInput: UITextInput?) {
//        // The app is about to change the document's contents. Perform any preparation here.
//    }
//
//    override func textDidChange(_ textInput: UITextInput?) {
//        // The app has just changed the document's contents, the document context has been updated.
//
//        var textColor: UIColor
//        let proxy = self.textDocumentProxy
//        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
//            textColor = UIColor.white
//        } else {
//            textColor = UIColor.black
//        }
//        self.nextKeyboardButton.setTitleColor(textColor, for: [])
//    }

}
