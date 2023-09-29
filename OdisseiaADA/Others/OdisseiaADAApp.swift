//
//  OdisseiaADAApp.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//

import FirebaseCore
import SwiftUI

@main
struct OdisseiaADAApp: App {
    
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
