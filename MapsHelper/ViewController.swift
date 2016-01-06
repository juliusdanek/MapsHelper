//
//  ViewController.swift
//  MapsHelper
//
//  Created by Julius Danek on 1/5/16.
//  Copyright © 2016 Julius Danek. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {
    
    //We will need actual location using core location. My location does not seem to be working properly
    
    let baseURL = "https://www.google.com/maps/dir/"
    
    let myLocation = "My+Location/"
    
    @IBOutlet weak var textField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        // Do view setup here.
    }
    
    func control(control: NSControl, textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool {
        //if the command in the textfield is enter, then perform an action. Return true if there is an action and it should not impact the textfield. Other selectors include tab and keys. If true for everything, the whole field doesn't accept tabs (could be used to disable their use?)
        if commandSelector == "insertNewline:" {
            print("You have pressed the enter Key")
            let destination = destinationTransform(textField.stringValue)
            //alternative method to escape string
//            var escapedString = TextField.stringValue.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())
            let url = baseURL + myLocation + destination
            let parsedURL = NSURL(string: url)!
            NSWorkspace.sharedWorkspace().openURL(parsedURL)
            return true
        } else {
            return false
        }
    }
    
    func control(control: NSControl, textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String] {
        if textView == textField {
            print("stuff")
        }
        return ["1", "2"]
    }
    
    override func controlTextDidChange(obj: NSNotification) {
        print("change")
    }
    
    
    //MARK: Helpers
    
    //Helps transform the string input for Google API
    func destinationTransform(destination: String) -> String {
        let replacedWhiteSpace = String(destination.characters.map {
            $0 == " " ? "+" : $0
            })
        return replacedWhiteSpace
    }
}
