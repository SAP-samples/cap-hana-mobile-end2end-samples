//
//  Advocates_AppApp.swift
//  Advocates App
//
//  Created by Muessig, Kevin on 29.06.21.
//

import SwiftUI

@main
struct AdvocatesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(DataModel())
        }
    }
}
