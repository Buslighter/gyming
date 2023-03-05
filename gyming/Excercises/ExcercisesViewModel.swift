//
//  ExcercisesViewModel.swift
//  gyming
//
//  Created by gleba on 04.03.2023.
//

import Foundation

class GroupsViewModel: ObservableObject{
    @Published private (set) var groups: [ExcerciseGroup]
    init(){
        self.groups = []
        ExcercisesData.exerciseDictionary.forEach{
            self.groups.append(ExcerciseGroup(nameOfGroup: $0.key))
        }
    }
    func choose(_ name: ExcerciseGroup){
    }
}
class ExcercisesViewModel: ObservableObject{
    @Published private (set) var model: ExcerciseGroup
    init(excerciseGroup: ExcerciseGroup){
        self.model = excerciseGroup
    }
}
