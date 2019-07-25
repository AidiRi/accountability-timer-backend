# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bryn = User.create(name:"Bryn")
aidi = User.create(name:"Aidi")

ws1 = WorkSession.create(start_time:"10:00", end_time:"10:20", total_time:20, note:"blahadfbllabaljh", user_id:1)

ws2 = WorkSession.create(start_time:"11:00", end_time:"11:20", total_time:20, note:"blahadfbllabaljh", user_id:2)

t1 = Task.create(title:"Do the dishes", status:"open", work_session_id:1)
t2 = Task.create(title:"Do the floors", status:"close", work_session_id:1)

t3 = Task.create(title:"Do the things", status:"open", work_session_id:2)
t4 = Task.create(title:"Do the outside things", status:"open", work_session_id:2)
