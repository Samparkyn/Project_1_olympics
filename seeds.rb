require_relative( 'models/nation.rb' )
require_relative( 'models/athlete.rb' )
require_relative( 'models/event.rb' )

Event.delete_all
Nation.delete_all
Athlete.delete_all

nation1 = Nation.new({ 'name' => 'Great Britain', 'flag_url' => 'http://images.nationmaster.com/images/flags/uk-lgflag.gif' })
nation2 = Nation.new({ 'name' => 'Switzerland', 'flag_url' => 'http://images.nationmaster.com/images/flags/sz-lgflag.gif' })
nation3 = Nation.new({ 'name' => 'USA', 'flag_url' => 'http://images.nationmaster.com/images/flags/us-lgflag.gif' })
nation4 = Nation.new({ 'name' => 'France', 'flag_url' => 'http://images.nationmaster.com/images/flags/fr-lgflag.gif'})
nation5 = Nation.new({ 'name' => 'Germany', 'flag_url' => 'http://images.nationmaster.com/images/flags/gm-lgflag.gif'})
nation6 = Nation.new({ 'name' => 'Argentina', 'flag_url' => 'http://images.nationmaster.com/images/flags/ar-lgflag.gif'})
nation7 = Nation.new({'name' => 'Netherlands', 'flag_url' => 'http://images.nationmaster.com/images/flags/nl-lgflag.gif'})

n1 = nation1.save()
n2 = nation2.save()
n3 = nation3.save()
n4 = nation4.save()
n5 = nation5.save()
n6 = nation6.save()
n7 = nation7.save()




athlete1 = Athlete.new({ 'name' => 'Ben Maher', 'nation_id' => n1.id })
athlete2 = Athlete.new({ 'name' => 'Steve Guerdat', 'nation_id' => n2.id })
athlete3 = Athlete.new({ 'name' => 'Reed Kesler', 'nation_id' => n3.id })
athlete4 = Athlete.new({ 'name' => 'Piuz Schwizer', 'nation_id' => n2.id })
athlete5 = Athlete.new({'name' => 'Charlotte Dujardin', 'nation_id' => n1.id })
athlete6 = Athlete.new({'name' => 'Carl Hester', 'nation_id' => n1.id })
athlete7 = Athlete.new({'name' => 'Marcus Ehning', 'nation_id' => n5.id })
athlete8 = Athlete.new({'name' => 'Meridith Micheals-Beerbaum', 'nation_id' => n5.id })
athlete9 = Athlete.new({'name' => 'Zara Phillips', 'nation_id' => n1.id })
athlete10 = Athlete.new({'name' => 'Kevin Staut', 'nation_id' => n4.id })
athlete11 = Athlete.new({'name' => 'Andy Murray', 'nation_id' => n1.id })
athlete12 = Athlete.new({'name' => 'Roger Federer', 'nation_id' => n2.id })
athlete13 = Athlete.new({'name' => 'Juan Martin Del Potro', 'nation_id' => n6.id })
athlete14 = Athlete.new({'name' => 'Anky Van Grunsven', 'nation_id' => n7.id})



a1 = athlete1.save()
a2 = athlete2.save()
a3 = athlete3.save()
a4 = athlete4.save()
a5 = athlete5.save()
a6 = athlete6.save()
a7 = athlete7.save()
a8 = athlete8.save()
a9 = athlete9.save()
a10 = athlete10.save()
a11 = athlete11.save()
a12 = athlete12.save()
a13 = athlete13.save()
a14 = athlete14.save()

event1 = Event.new({ 'event_name' => 'Show Jumping', 'gold_id' => a2.id , 'silver_id' => a1.id, 'bronze_id' => a4.id })
event2 = Event.new({ 'event_name' => 'Dressage', 'gold_id' => a5.id , 'silver_id' => a14.id, 'bronze_id' => a6.id })
event3 = Event.new({'event_name' => 'Eventing', 'gold_id' => a9.id , 'silver_id' => a8.id, 'bronze_id' => a10.id})
event4 = Event.new({'event_name' => 'Tennis Mens Singles', 'gold_id' => a11.id , 'silver_id' => a12.id, 'bronze_id' => a13.id})

event1.save()
event2.save()
event3.save()
event4.save()
