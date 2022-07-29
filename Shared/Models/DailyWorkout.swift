//
//  DailyWorkout.swift
//  MT (iOS)
//
//  Created by Joseph William DeWeese on 7/29/22.
//

import Foundation


struct DailyWorkout {
    var workoutTitle: String
    var workoutDescrip: String
    var exercises: [String]
    var theme: Theme
    
}
//JWD:  SAMPLE DATA FOR PRELOAD OF APPLICATION
extension DailyWorkout {
    static let sampleData : [DailyWorkout] =
    [
        DailyWorkout(workoutTitle: "Back/Biceps ", workoutDescrip: "Complete workout as Rx'd", exercises: ["Barbell Row   4x8-10", "Arnold Press  3x10", "Lat Rows  4x8-10", "Upright Rows  4x12","Lat Pulldowns  4x8-10","Dumbbell Curls  5x8-10", "Preacher Curl   5x8-10", "Combat Run  15 mins 1:2","Stretch 30 mins"], theme: .indigo),
    DailyWorkout(workoutTitle: "Chest/Triceps", workoutDescrip:  "Complete workout as Rx'd", exercises: ["Bench Press: 4 sets @155 x 10", "Chest Press: 4x8-12","Incline Bench Press: 3x10", "Dumbbell Fly: 3x10", "Tricep Pushdowns: 5x8-12", "Tricep Extension: 3x8-12", "Combat Run: 15 mins 1:2"],  theme: .oxblood),
    DailyWorkout(workoutTitle: "Leg Day", workoutDescrip: "Complete workout as Rx'd", exercises: ["Combat run 15 mins 1:3", "Squat: 4 sets @135 lbs. x 10", "Deadlift: 2 sets @225 lbs. x 10", "Leg Extensions: 4x8-12", "Leg Curls 2x10, 1x12", "Hanging Leg Lifts: 3x12", "Plank: 3x30 sec", "Stretch 30 mins"], theme: .navy),
    DailyWorkout(workoutTitle: "Manion", workoutDescrip:  "Complete workout as Rx'd:  7 Rounds for time", exercises: ["Run 400 Meters", "135 pound Back squat, 29 reps"], theme: .poppy),
    DailyWorkout(workoutTitle: "Badger", workoutDescrip:  "Complete workout as Rx'd: # Rounds for Time", exercises: ["30 squat cleans", "30 pull-ups", "Run 800 meters"], theme: .periwinkle)
   ]
}
