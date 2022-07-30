//
//  WorkoutDetailView.swift
//  MT (iOS)
//
//  Created by Joseph Wil;liam DeWeese on 7/29/22.
//
import SwiftUI


struct WorkoutDetailView: View {
    //JWD: PROPERTIES
    let workout: DailyWorkout
    

    var body: some View {
        List {
            Section(header: Text("Workout Info")) {
                NavigationLink(destination: TimerView()) {
                    Label("Begin Workout", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(workout.theme.name)
                        .padding(4)
                        .foregroundColor(workout.theme.accentColor)
                        .background(workout.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            }
        .navigationTitle(workout.title)
        }
    }


struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WorkoutDetailView(workout: DailyWorkout.sampleData[0])
        }
    }
}
