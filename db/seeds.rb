# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user_name_list = [
  [ "Franko", "Frances", "frank@g.com", "password",23],
  [ "bear", "Patrice", "patricias@g.com","password",29],
  [ "puddle_skipper", "Nathan", "nathaniel@g.com","password", 21],
  [ "Netherlands", "Marcus","marcusgrave@gmail.com",28],
  [ "sisyphus", "Sven", "svens@g.com","password", 25],
  [ "greenbay", "Chloe", "hoopsdive@l.com","password", 27],
  [ "batman", "Virginia", "batman@cave.com","password", 19],
  [ "flash", "Ravi", "rav@g.com","password", 24],
  [ "tennislover777", "Spencer", "spencer@g.com", "password",25],
  [ "mercury", "Puyora", "reed@g.com","password", 31],
  [ "flamingbun", "Veronica", "vron@g.com","password", 20],
  [ "firewalker", "Hank", "hank@g.com","password", 16],
  [ "kanyewestfan22", "Joe", "joepen@g.com","password", 41],
  [ "systemofatown", "Claire", "hello@g.com","password", 30],
  [ "Pdiddley", "Stephen", "stephen@g.com","password", 22],
]

user_name_list.each do |uname, fname, email,password,age|
  User.create(username: uname, fname: fname, email: email, password: password, age: age)
end



posts_sample_list =[
["Selling Old Chemistry Textbooks","I have 4 books from last semester's CHemistry course 502 Chem and the lab. They're in good condition! Message below for more info!",3],
["Looking for a puppy","I'd love to get a puppy this year. If anyone has a puppy or knows someone who has a bitch with a litter let me know.",9],
["Travelling to Iceland","Leaving the city for Iceland on a trip. Cannot wait!",4],
["Quizzo at Smurphy Dan's bar","We're hosting the piano club's 5th annual happy hour next Sunday on August 23rd. Invite your friends!",8],
["Pokemon GO!","Yes let's meet up as a group for the shiniest Pokemon imaginable!",12],
["Missing Laptop","Hello, a laptop computer was found near the breakroom. Details will be divulged when you come to the Public Safety Office in front of the main entrance. Please bring ID.. There will be a $30 fine for returns.",13],
["Looking for a roomate","I currently live at 450 Ruby street. I'm looking for one roomate, preferably female who is a graduate student preferably or a working professional.",2]

]

posts_sample_list.each do |topic,content,user_id|
	Post.create(topic: topic, content: content, user_id: user_id)
end

	comments_sample_list = [
	["Hi I'm very interested in the apartment. I'm a graduate student and I'll be looking for something around a December start date. Does that work for your lease?",7,6],
	["Are there any highlighting or pencil marks in the books?",1,3],
	["Best of luck, check out the Icelandic horses!",3,10],
	["We're also looking for someone at 99 Rails Avenue",7,11],
	["OP do you know Michael? He's the one organizing the happy hour.",4,8],
	["I'm also intersted in the place. My budget is really $680 a month and I'm looking for all utilities in cluded.",7,7],
	["Jet fuel can't melt steel beams",5,3],
	["Where is the Public Safety Office? Is it by the glass door?",6,4],
	["Quizzo date is set so pupmped! Been looking forward to this forever!",4,13],
	["I'm from Iceland! I could definitely give you the inside scoop about the it!Where will yo ube staying?? :D",3,5]
	]
comments_sample_list.each do |comment,post_id,user_id|
Comment.create(comment: comment, post_id: post_id, user_id: user_id) 
end
