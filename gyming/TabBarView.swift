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
            MainView(groupsVM: GroupsViewModel())
                .tabItem{
                    Label("Главная", systemImage: "house.fill")
                }
            
            MyTrainingView()
                .tabItem{
                    Label("Мои тренировки", systemImage: "heart.fill")
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
