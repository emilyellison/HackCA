# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cahack1 = Event.create( title: 'First Hack-a-thon for Spring 2012', description: 'The first hackathon for the class of Spring 2012.
 Students were given only 48 hours to build their dreams. And those dreams got built.',
location: 'Code Academy', start_date: DateTime.new(2012,5,11,17,30), end_date: DateTime.new(2012,5,13,17),
website: 'http://codeacademy.org/' )

cahack2 = Event.create( title: 'Gear Up for Demo Day!', subtitle: 'Details courtesy of Vince Cabansag', description: 'We have decided to move our next hackathon to June 8-10 which will give you the opportunity
to work with your 	teams, your sprint managers and mentors.  Given our team format for demo
day, we encourage you and your teams to take advantage of this weekend and we\'re open to 
altering the structure of the hackathon to accomodate the team format (demos of early-prototypes) 
and opportunity to practice presenting as a team.  Let us know if you have any input on the next
hackathon.',
location: 'Code Academy', start_date: DateTime.new(2012,6,8,17,30), end_date: DateTime.new(2012,6,10,17), 
website: 'http://codeacademy.org/' )

emily = User.create(first: 'Emily', last: 'Ellison', dev: true,
  email: 'emilyellison986@gmail.com', password: 'foobar', password_confirmation: 'foobar' )

danny = User.create(first: 'Danny', last: 'Cardella', dev: true, design: true, html_css: true,
  email: 'dcardella@endeavorequity.com', password: 'foobar', password_confirmation: 'foobar' )
andrew = User.create(first: 'Andrew', last: 'Deitrick', dev: true,
  email: 'ajdeitrick@gmail.com', password: 'foobar', password_confirmation: 'foobar' )
dan = User.create(first: 'Dan', last: 'Kaplan', dev: true,
  email: 'daniel.scott.kaplan@gmail.com', password: 'foobar', password_confirmation: 'foobar' )

story = Webapp.new(title: 'A Story or Two', description: 'Create the ultimate story through voting!',
  website: 'http://astoryortwo.herokuapp.com/', event_id: 1)

[ danny, andrew, dan ].each do |member|  
  story.teams.build( user_id: member.id )
end

story.save

adam = User.create(first: 'Adam', last: 'Calica', design: true,
  email: 'adamcodeacademy@gmail.com', password: 'foobar', password_confirmation: 'foobar' )
frank = User.create(first: 'Frank', last: 'Fukuchi', dev: true,
  email: 'frank.fukuchi@gmail.com', password: 'foobar', password_confirmation: 'foobar' )  
nakyum = User.create(first: 'Nakyum', last: 'Yoon', dev: true,
  email: 'nakyum.yoon@gmail.com', password: 'foobar', password_confirmation: 'foobar' )
tatsu = User.create(first: 'Tatsu', last: 'Nishimura', dev: true,
  email: 'tnishim0@chicagobooth.com', password: 'foobar', password_confirmation: 'foobar' )  
brian = User.create(first: 'Brian', last: 'Kung', dev: true,
  email: 'brianhingyenkung@gmail.com', password: 'foobar', password_confirmation: 'foobar' )

donut = Webapp.new( title: 'DonutTracker', description: 'Find donuts in Chicago with Donut Tracker!',
  website: 'http://glowing-mist-6561.herokuapp.com/', 
  github: 'https://github.com/faitswulff/DonutTracker', event_id: 1 )
  
[ adam, frank, nakyum, tatsu, brian ].each do |member|  
  donut.teams.build( user_id: member.id )
end

donut.save

nikhil = User.create(first: 'Nikhil', last: 'Hira', dev: true,
  email: 'hira1sem@gmail.com', password: 'foobar', password_confirmation: 'foobar' )
haseeb = User.create(first: 'Haseeb', last: 'Javed', dev: true, design: true, html_css: true,
  email: 'haseeb.javed@gmail.com', password: 'foobar', password_confirmation: 'foobar' )
luis = User.create(first: 'Luis', last: 'Rodriguez', dev: true,
  email: 'smoothlou@gmail.com', password: 'foobar', password_confirmation: 'foobar' )
ted = User.create(first: 'Ted', last: 'Meeds', dev: true,
  email: 'tmeeds@gmail.com', password: 'foobar', password_confirmation: 'foobar' )

mother = Webapp.new(title: 'Yo Momma!', description: 'Find the perfect Mother\'s Day Deal for your Mom!',
  website: 'http://mothers-day-deals.herokuapp.com/', event_id: 1)
  
[ nikhil, haseeb, luis, ted ].each do |member|  
  mother.teams.build( user_id: member.id )
end

mother.save

