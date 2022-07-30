//
//  DailyWorkout.swift
//  MT (iOS)
//
//  Created by Joseph William DeWeese on 7/29/22.
//

import Foundation


struct DailyWorkout: Identifiable {
    let id:  UUID
    var title: String
    var description: String
    var exercises: [String]
    var type: String
    var theme: Theme
    
    init (id: UUID = UUID(), title: String,  description: String, exercises: [String], type: String,  theme: Theme) {
        self.id = id
        self.title = title
        self.description = description
        self.exercises = exercises
        self.type = type
        self.theme = theme
    }
}
extension DailyWorkout {
    struct Exercise: Identifiable  {
        let id: UUID
        var exerciseName: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.exerciseName = name
            
            
        }
    }
}

//JWD:  SAMPLE DATA FOR PRELOAD OF APPLICATION
extension DailyWorkout {
    static let sampleData : [DailyWorkout] =
    [
        DailyWorkout(title: "Back/Biceps ", description: "Complete workout as Rx'd", exercises: ["Barbell Row   4x8-10", "Arnold Press  3x10", "Lat Rows  4x8-10", "Upright Rows  4x12","Lat Pulldowns  4x8-10","Dumbbell Curls  5x8-10", "Preacher Curl   5x8-10", "Combat Run  15 mins 1:2","Stretch 30 mins"], type: "Strength", theme: .indigo),
        DailyWorkout(title: "Chest/Triceps", description:  "Complete workout as Rx'd", exercises: ["Bench Press: 4 sets @155 x 10", "Chest Press: 4x8-12","Incline Bench Press: 3x10", "Dumbbell Fly: 3x10", "Tricep Pushdowns: 5x8-12", "Tricep Extension: 3x8-12", "Combat Run: 15 mins 1:2"], type: "Strength",  theme: .oxblood),
        DailyWorkout(title: "Leg Day", description: "Complete workout as Rx'd", exercises: ["Combat run 15 mins 1:3", "Squat: 4 sets @135 lbs. x 10", "Deadlift: 2 sets @225 lbs. x 10", "Leg Extensions: 4x8-12", "Leg Curls 2x10, 1x12", "Hanging Leg Lifts: 3x12", "Plank: 3x30 sec", "Stretch 30 mins"], type: "Strength", theme: .navy),
        DailyWorkout(title: "Manion", description:  "Complete workout as Rx'd:  7 Rounds for time", exercises: ["Run 400 Meters", "135 pound Back squat, 29 reps"], type: "HIIT", theme: .poppy),
        DailyWorkout(title: "Badger", description:  "Complete workout as Rx'd: # Rounds for Time", exercises: ["30 squat cleans", "30 pull-ups", "Run 800 meters"], type: "HIIT", theme: .periwinkle)
   ]
}
