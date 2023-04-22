//
//  ExercisesViewModel.swift
//  gyming
//
//  Created by gleba on 04.03.2023.
//

import Foundation

class GroupsViewModel: ObservableObject{
    @Published private (set) var groups: [ExerciseGroup]
    init(){
        self.groups = []
        MuscleGroup.allCases.forEach{
            self.groups.append(ExerciseGroup(muscleGroup: $0))
        }
    }
    func choose(_ name: ExerciseGroup){
    }
}
class ExercisesViewModel: ObservableObject{
    @Published private (set) var model: ExerciseGroup
    init(ExerciseGroup: ExerciseGroup){
        self.model = ExerciseGroup
    }
}
