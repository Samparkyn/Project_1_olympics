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
nation8 = Nation.new({'name' => 'Australia', 'flag_url' => 'http://images.nationmaster.com/images/flags/as-lgflag.gif'})
nation9 = Nation.new({'name' => 'Jamaica', 'flag_url' => 'http://images.nationmaster.com/images/flags/jm-lgflag.gif'})
nation10 = Nation.new({'name' => 'Sweden', 'flag_url' => 'http://images.nationmaster.com/images/flags/sw-lgflag.gif'})

n1 = nation1.save()
n2 = nation2.save()
n3 = nation3.save()
n4 = nation4.save()
n5 = nation5.save()
n6 = nation6.save()
n7 = nation7.save()
n8 = nation8.save()
n9 = nation9.save()
n10 = nation10.save()


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
athlete15 = Athlete.new({'name' => 'Usain Bolt', 'nation_id' => n9.id})
athlete16 = Athlete.new({'name' => 'Yohan Blake', 'nation_id' => n9.id})
athlete17 = Athlete.new({'name' => 'Justin Gatlin', 'nation_id' => n3.id})
athlete18 = Athlete.new({'name' => 'Greg Rutherford', 'nation_id' => n1.id})
athlete19 = Athlete.new({'name' => 'Mitchell Watt', 'nation_id' => n8.id})
athlete20 = Athlete.new({'name' => 'Will Claye', 'nation_id' => n3.id})
athlete21 = Athlete.new({'name' => 'Nicola Spirig', 'nation_id' => n2.id})
athlete22 = Athlete.new({'name' => 'Lisa Norden', 'nation_id' => n10.id})
athlete23 = Athlete.new({'name' => 'Erin Densham', 'nation_id' => n8.id})

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
a15 = athlete15.save()
a16 = athlete16.save()
a17 = athlete17.save()
a18 = athlete18.save()
a19 = athlete19.save()
a20 = athlete20.save()
a21 = athlete21.save()
a22 = athlete22.save()
a23 = athlete23.save()

event1 = Event.new({ 'event_name' => 'Show Jumping', 'gold_id' => a2.id , 'silver_id' => a1.id, 'bronze_id' => a4.id })
event2 = Event.new({ 'event_name' => 'Dressage', 'gold_id' => a5.id , 'silver_id' => a14.id, 'bronze_id' => a6.id })
event3 = Event.new({'event_name' => 'Eventing', 'gold_id' => a9.id , 'silver_id' => a8.id, 'bronze_id' => a10.id})
event4 = Event.new({'event_name' => 'Tennis Mens Singles', 'gold_id' => a11.id , 'silver_id' => a12.id, 'bronze_id' => a13.id})
event5 = Event.new({'event_name' => 'Womans Triathlon', 'gold_id' => a21.id , 'silver_id' => a22.id, 'bronze_id' => a23.id })
event6 = Event.new({'event_name' => 'Athletics - Mens 100m', 'gold_id' => a15.id , 'silver_id' => a16.id, 'bronze_id' => a17.id })
event7 = Event.new({'event_name' => 'Athletics - Mens LongJump', 'gold_id' => a18.id , 'silver_id' => a19.id, 'bronze_id' => a20.id })


event1.save()
event2.save()
event3.save()
event4.save()
event5.save()
event6.save()
event7.save()
