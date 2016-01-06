//
//  AppDelegate.swift
//  MapsHelper
//
//  Created by Julius Danek on 1/4/16.
//  Copyright © 2016 Julius Danek. All rights reserved.
//

import Cocoa
import Alamofire

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
//    let APIKey = "AIzaSyCGPOumNvHEmIxG2608qbgwW2qtx0V26f4"
//    let requestURL = "https://maps.googleapis.com/maps/api/place/autocomplete/json"
//    let input = "Paris, France"
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        
//        Alamofire.request(.GET, requestURL, parameters: ["input" : input, "key" : APIKey], encoding: .URL, headers: nil).responseJSON(completionHandler: { (response) -> Void in
//            print(response)
//            })
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

