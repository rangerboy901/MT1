//
//  WorkoutsView.swift
//  MT (iOS)
//
//  Created by Joseph Wil;liam DeWeese on 7/29/22.
//

import SwiftUI

struct WorkoutsView: View {
    //JWD: PROPERTIES
    let workouts: [DailyWorkout]
    var body: some View {
        List {
            ForEach(workouts)  { workout in
                NavigationLink(destination: WorkoutDetailView(workout: workout)) {
                WorkoutCardView(workout: workout)
            }
                .listRowBackground(workout.theme.mainColor)
        }
            .shadow(color: .primary, radius: 25 )
         
        }
        .navigationTitle("Daily Grind")
        .toolbar {
    Button(action: {}) {
        Image(systemName: "plus")
    }
    .accessibilityLabel("New Workout")
}
}
}
struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView(workouts: DailyWorkout.sampleData)
    }
}
