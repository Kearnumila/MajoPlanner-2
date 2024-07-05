//
//  MajoPlanner_2App.swift
//  MajoPlanner 2
//
//  Created by Kearnu Mila on 9/6/2024.
//

import SwiftUI
import Firebase



@main
struct MajoPlanner_2App: App {
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
