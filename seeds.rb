require_relative( 'models/nation.rb' )
require_relative( 'models/athlete.rb' )
require_relative( 'models/event.rb' )

Event.delete_all
Nation.delete_all
Athlete.delete_all

nation1 = Nation.new({ 'name' => 'Great Britain', 'flag_url' => 'http://images.nationmaster.com/images/flags/uk-lgflag.gif' })
nation2 = Nation.new({ 'name' => 'Switzerland', 'flag_url' => 'http://images.nationmaster.com/images/flags/sz-lgflag.gif' })
nation3 = Nation.new({ 'name' => 'USA', 'flag_url' => 'http://images.nationmaster.com/images/flags/us-lgflag.gif' })

n1 = nation1.save()
n2 = nation2.save()
n3 = nation3.save()

athlete1 = Athlete.new({ 'name' => 'Ben Maher', 'nation_id' => n1.id })
athlete2 = Athlete.new({ 'name' => 'Steve Guerdat', 'nation_id' => n2.id })
athlete3 = Athlete.new({ 'name' => 'Reed Kesler', 'nation_id' => n3.id })
athlete4 = Athlete.new({ 'name' => 'Piuz Schwizer', 'nation_id' => n2.id })

a1 = athlete1.save()
a2 = athlete2.save()
a3 = athlete3.save()
a4 = athlete4.save()

event1 = Event.new({ 'event_name' => 'Show Jumping', 'gold_id' => a1.id , 'silver_id' => a4.id, 'bronze_id' => a2.id })
event2 = Event.new({ 'event_name' => 'Dressage', 'gold_id' => a2.id , 'silver_id' => a1.id, 'bronze_id' => a3.id })

event1.save()
event2.save()