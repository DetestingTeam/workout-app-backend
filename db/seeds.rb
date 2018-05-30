# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
movement = Movement.create([{ name: 'Push Up', description: "Keep a tight core throughout the entire push up. Inhale as you slowly bend your elbows and lower yourself until your elbows are at a 90-degree angle. Exhale as you begin contracting your chest muscles and pushing back up through your hands to the start position. Don't lock out the elbows; keep them slightly bent", bodypart: 'Chest', url: 'https://upload.wikimedia.org/wikipedia/commons/1/13/Man_Doing_Push_Ups_GIF_Animation_Loop.gif' }])



#   Character.create(name: 'Luke', movie: movies.first)

workout = Workout.create([{ name: 'Booty Blaster', difficulty: 'moderate', duration: '1 hour'}])

schedule = Schedule.create([{ date: '1/1/1999', time: '8 am', workouts_id: 1 }])
