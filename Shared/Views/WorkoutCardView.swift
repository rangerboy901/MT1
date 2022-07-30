//
//  WorkoutCardView.swift
//  MT (iOS)
//
//  Created by Joseph William DeWeese on 7/29/22.
//

import SwiftUI

struct WorkoutCardView: View {
    let workout:  DailyWorkout
    
    var body: some View {
        VStack (alignment:.leading){
            Text(workout.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Text(workout.description)
                .font(.callout)
                .foregroundColor(.primary)
                .accessibilityLabel("\(workout.description)Workout Description")
            HStack{
                Label("\(workout.type)", systemImage: "figure.highintensity.intervaltraining")
                    .foregroundColor(Color.primary)
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(workout.type) Workout type")
                    .font(.caption2)
                    .padding(3)
                
                    .padding(.trailing, 20)
            }
            .overlay(
                Capsule().stroke(.primary))
            
        }//TODO:   ADD LAST DATE COMPLETED -
        //            .font(.caption)
        //            .padding()
        //            .foregroundColor(workout.theme.accentColor)
    }
}
struct WorkoutCardView_Previews: PreviewProvider {
    static var workout = DailyWorkout.sampleData[0]
    static var previews: some View {
        WorkoutCardView(workout: workout)
            .background(workout.theme.mainColor)
            .previewLayout(.fixed(width: 600, height: 60))
    }
}

