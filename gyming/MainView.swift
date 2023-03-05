//
//  ContentView.swift
//  gyming
//
//  Created by gleba on 01.02.2023.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct MainView: View {
    @ObservedObject var groupsVM: GroupsViewModel
    var body: some View {
        VStack{
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(groupsVM.groups){ group in
                            ExcercisesView(excerciseVM: ExcercisesViewModel(excerciseGroup: group), typeOfSize: .Big)
                        }
                    }
                }.padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(groupsVM.groups){ group in
                            ExcercisesView(excerciseVM: ExcercisesViewModel(excerciseGroup: group), typeOfSize: .Small)
                        }
                        NavigationView {}
                    }
                    
            }.padding(.leading)
            Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        let groups = GroupsViewModel()
        MainView(groupsVM: groups)
    }
}
