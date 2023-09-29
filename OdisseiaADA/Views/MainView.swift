//
//  ContentView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            //signed in
            HomeView()
        }
            else {
                LoginView()
            }
    }
       
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
