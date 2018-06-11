# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movement = Movement.create( name: 'Push Up', description: "Keep a tight core throughout the entire push up. Inhale as you slowly bend your elbows and lower yourself until your elbows are at a 90-degree angle. Exhale as you begin contracting your chest muscles and pushing back up through your hands to the start position. Don't lock out the elbows; keep them slightly bent", bodypart: 'Chest', url: 'https://upload.wikimedia.org/wikipedia/commons/1/13/Man_Doing_Push_Ups_GIF_Animation_Loop.gif' )

user1 = User.create(first_name: 'John', last_name: 'Murphy', email: 'test@test.com', password: 'Test1234', password_confirmation: 'Test1234')
user2 = User.create(first_name: 'Jess', last_name: 'Murphy', email: 'email2@test.com',  password: 'Test1234', password_confirmation: 'Test1234')
user3 = User.create(first_name: 'Steve', last_name: 'Wild', email: 'email3@test.com',  password: 'Test1234', password_confirmation: 'Test1234')
user4 = User.create(first_name: 'Mike', last_name: 'Jones', email: 'email4@test.com',  password: 'Test1234', password_confirmation: 'Test1234')
user5 = User.create(first_name: 'Linda', last_name: 'Smith', email: 'email5@test.com',  password: 'Test1234', password_confirmation: 'Test1234')

movement1 = Movement.create( movement_name: 'Pull Up', movement_description: "Keep a tight core throughout the entire push up.  keep them slightly bent", bodypart: 'Chest', url: 'https://upload.wikimedia.org/wikipedia/commons/1/13/Man_Doing_Push_Ups_GIF_Animation_Loop.gif' )
movement2 = Movement.create( movement_name: 'Sit Up', movement_description: "Keep a tight core throughout the entire push up. Inhale as you slowly bend your elbows and lower yourself until your elbows are at a  bent", bodypart: 'Chest', url: 'https://upload.wikimedia.org/wikipedia/commons/1/13/Man_Doing_Push_Ups_GIF_Animation_Loop.gif' )
movement3 = Movement.create( movement_name: 'Burpee', movement_description: "Keep a tight core throughout the entire push up. Inhale as you slowly bend your elbows and lower yourself until your elbows are at a 90-degree angle. Exhale m slightly bent", bodypart: 'Chest', url: 'https://upload.wikimedia.org/wikipedia/commons/1/13/Man_Doing_Push_Ups_GIF_Animation_Loop.gif' )
movement4 = Movement.create( movement_name: 'Sled pull', movement_description: "Keep a tight core throughout the ews; keep them slightly bent", bodypart: 'Chest', url: 'https://upload.wikimedia.org/wikipedia/commons/1/13/Man_Doing_Push_Ups_GIF_Animation_Loop.gif' )
movement5 = Movement.create( movement_name: 'Snatch', movement_description: "Keep a tight core throughout the entire push up. Inhale as you slowly bend your elbows and lower yourself until your elbows are at a 9slightly bent", bodypart: 'Chest', url: 'https://upload.wikimedia.org/wikipedia/commons/1/13/Man_Doing_Push_Ups_GIF_Animation_Loop.gif' )
#
#movement = Movement.create(name: 'Push Up', description: 'Keep a tight core', bodypart: 'Chest')


#   Character.create(name: 'Luke', movie: movies.first)

workout1 = Workout.create( workout_name: 'Booty Blaster', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-11-2018', time: '8am', location: 'Kate Session1 Park San Diego', instructor: 'Mike G')
workout2 = Workout.create( workout_name: 'Thunder Tights', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-11-2018', time: '9am', location: 'Torrey Pines La Jolla', instructor: 'Christine B')
workout3 = Workout.create( workout_name: 'Bluber Buster', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-11-2018', time: '10am', location: 'Balboa Park San Diego', instructor: 'Mike G')
workout4 = Workout.create( workout_name: 'Ab of Steel', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-12-2018', time: '8am', location: 'Petco Park San Diego', instructor: 'Christine B')
workout5 = Workout.create( workout_name: 'Leg Burner', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-12-2018', time: '8am', location: 'Balboa Park San Diego', instructor: 'Mike G')
workout6 = Workout.create( workout_name: 'Gun Maker', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-12-2018', time: '8am', location: 'Kate Session Park San Diego', instructor: 'Mike G')
workout34 = Workout.create( workout_name: 'Abs of Steel', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-13-2018', time: '8am', location: 'Petco Park San Diego', instructor: 'Christine B')
workout35 = Workout.create( workout_name: 'Leg Burner', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-13-2018', time: '8am', location: 'Balboa Park San Diego', instructor: 'Mike G')
workout36 = Workout.create( workout_name: 'Gun Maker', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-13-2018', time: '8am', location: 'Kate Session Park San Diego', instructor: 'Mike G')
workout10 = Workout.create( workout_name: 'Booty Blaster', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-14-2018', time: '8am', location: 'Kate Session1 Park San Diego', instructor: 'Christine B')
workout12 = Workout.create( workout_name: 'Thunder Tights', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-14-2018', time: '9am', location: 'Torrey Pines La Jolla', instructor: 'Mike G')
workout13 = Workout.create( workout_name: 'Spin Away', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-14-2018', time: '10am', location: 'Balboa Park San Diego', instructor: 'Christine B')
workout14 = Workout.create( workout_name: 'Legs Steel', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-15-2018', time: '8am', location: 'Petco Park San Diego', instructor: 'Mike G')
workout15 = Workout.create( workout_name: 'Burner', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-15-2018', time: '8am', location: 'Balboa Park San Diego', instructor: 'Christine B')
workout16 = Workout.create( workout_name: 'Gun Maker', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-15-2018', time: '8am', location: 'Kate Session Park San Diego', instructor: 'Mike G')
orkout24 = Workout.create( workout_name: 'Abs of Steel', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-16-2018', time: '8am', location: 'Petco Park San Diego', instructor: 'Christine B')
workout25 = Workout.create( workout_name: 'Leg Burner', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-16-2018', time: '8am', location: 'Balboa Park San Diego', instructor: 'Mike G')
workout26 = Workout.create( workout_name: 'Gun Maker', difficulty: 'moderate', duration: '1 hour', workout_date: 'Jun-16-2018', time: '8am', location: 'Kate Session Park San Diego', instructor: 'Christine B')
#
#
# schedule1 = Schedule.create( date: '1/1/1999', time: '8 am', workouts_id: 1 )
# schedule2 = Schedule.create( date: '1/5/2018', time: '8 am', workouts_id: 2 )
# schedule3 = Schedule.create( date: '5/6/2018', time: '8 am', workouts_id: 3 )
# schedule4 = Schedule.create( date: '6/1/2018', time: '8 am', workouts_id: 4 )
# schedule5 = Schedule.create( date: '6/1/2018', time: '8 am', workouts_id: 5 )
# schedule6 = Schedule.create( date: '6/2/2018', time: '8 am', workouts_id: 6 )
#

history = UserHistory.create( user_id: 1, set: 1, weight: 20, rep: 5, movement_id: 1, workout_id: 1)
history2 = UserHistory.create( user_id: 1, set: 2, weight: 10, rep: 12, movement_id: 1, workout_id: 1)
history3 = UserHistory.create( user_id: 3, set: 1, weight: 45, rep: 8,  movement_id: 2, workout_id: 1)
history4 = UserHistory.create( user_id: 3, set: 2, weight: 20, rep: 10, movement_id: 2, workout_id: 1)
history5 = UserHistory.create( user_id: 2, set: 1, weight: 20, rep: 10, movement_id: 5, workout_id: 1)
history6 = UserHistory.create( user_id: 2, set: 2, weight: 30, rep: 10, movement_id: 5, workout_id: 1)
history7 = UserHistory.create( user_id: 3, set: 1, weight: 20, rep: 10, movement_id: 3, workout_id: 1)
history8 = UserHistory.create( user_id: 3, set: 2, weight: 20, rep: 10, movement_id: 3, workout_id: 1)



w1 = Workoutdetail.create(rec_set: 7, rec_rep: 8, rec_duration: '10min',  workout_id: 1, movement_id: 1)
w11 = Workoutdetail.create(rec_set: 7, rec_rep: 8, rec_duration: '10min',  workout_id: 1, movement_id: 2)
w12 = Workoutdetail.create(rec_set: 7, rec_rep: 8, rec_duration: '10min',  workout_id: 1, movement_id: 3)
w13 = Workoutdetail.create(rec_set: 4, rec_rep: 5, rec_duration: '10min',  workout_id: 1, movement_id: 4)
w14 = Workoutdetail.create(rec_set: 7, rec_rep: 8, rec_duration: '10min',  workout_id: 1, movement_id: 5)
w14 = Workoutdetail.create(rec_set: 7, rec_rep: 8, rec_duration: '10min',  workout_id: 2, movement_id: 3)
w5 = Workoutdetail.create(rec_set: 7, rec_rep: 8, rec_duration: '10min',  workout_id: 2, movement_id: 1)
w6 = Workoutdetail.create(rec_set: 7, rec_rep: 8, rec_duration: '10min',  workout_id: 2, movement_id: 2)
