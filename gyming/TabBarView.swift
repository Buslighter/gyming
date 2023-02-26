//
//  MainView.swift
//  gyming
//
//  Created by Елисей Коновалов on 13.2.23..
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            
            MyTrainingView()
                .tabItem{
                    Label("Мои тренирокви", systemImage: "heart.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person.crop.circle")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
