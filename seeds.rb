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


athlete1 = Athlete.new({ 'name' => 'Ben Maher', 'nation_id' => n1.id, 'athlete_stats' => 'Age: 33 Horse: Tripple X III', 'athlete_image' => 'http://www.jeanniesequestrianworld.co.uk/wp-content/uploads/2013/08/benmaher.jpg' })
athlete2 = Athlete.new({ 'name' => 'Steve Guerdat', 'nation_id' => n2.id, 'athlete_stats' => 'Age: 33 Horse: Nino de Buissonnets', 'athlete_image' => 'http://www3.pictures.zimbio.com/gi/Olympics+Day+12+Equestrian+Ea6GH19KV-Vl.jpg' })
athlete3 = Athlete.new({ 'name' => 'Reed Kesler', 'nation_id' => n3.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Greg_Rutherford_Gold_Medal_in_Long_Jump_crop.jpg' })
athlete4 = Athlete.new({ 'name' => 'Piuz Schwizer', 'nation_id' => n2.id, 'athlete_stats' => 'Age: 53 Horse: Carlina IV ', 'athlete_image' => 'http://www4.pictures.zimbio.com/gi/Pius+Schwizer+Olympics+Day+12+Equestrian+XbGdhhoSstDl.jpg' })
athlete5 = Athlete.new({'name' => 'Charlotte Dujardin', 'nation_id' => n1.id, 'athlete_stats' => 'Age: 30 Horse: Valegro ', 'athlete_image' => 'http://www1.pictures.zimbio.com/gi/Charlotte+Dujardin+Valegro+Olympics+Day+13+fc46jm4Vt5nl.jpg' })
athlete6 = Athlete.new({'name' => 'Carl Hester', 'nation_id' => n1.id, 'athlete_stats' => 'Age: 48 Horse: Uthopia ', 'athlete_image' => 'http://www.dressage-news.com/wp-content/uploads/2012/08/Carl-Hester-Uthopia-9T5U1862.jpg' })
athlete7 = Athlete.new({'name' => 'Marcus Ehning', 'nation_id' => n5.id, 'athlete_stats' => 'Age: 41 Horse: Plot Blue ', 'athlete_image' => 'http://www2.pictures.zimbio.com/gi/Marcus+Ehning+Olympics+Day+10+Equestrian+vXLhaWwcxIUl.jpg' })
athlete8 = Athlete.new({'name' => 'Meridith Micheals-Beerbaum', 'nation_id' => n5.id, 'athlete_stats' => 'Age: 46 Horse: Shutterfly ', 'athlete_image' => 'https://swishe.files.wordpress.com/2011/04/michaelsbbaum07kh_wcj.jpg' })
athlete9 = Athlete.new({'name' => 'Zara Phillips', 'nation_id' => n1.id, 'athlete_stats' => 'Age: 34 Horse: High Kingdom ', 'athlete_image' => 'http://i.dailymail.co.uk/i/pix/2012/07/31/article-2181493-144F6804000005DC-614_964x1235.jpg' })
athlete10 = Athlete.new({'name' => 'Kevin Staut', 'nation_id' => n4.id, 'athlete_stats' => 'Age: 50 Horse: Kraque Boom ', 'athlete_image' => 'http://cdn.c.photoshelter.com/img-get/I0000YjTbmSFdjdA/s/750/750/Hipica-Saltos-Ind-5A12-12.jpg' })
athlete11 = Athlete.new({'name' => 'Andy Murray', 'nation_id' => n1.id, 'athlete_stats' => 'Age: 28', 'athlete_image' => 'http://i1.dailyrecord.co.uk/incoming/article1230211.ece/ALTERNATES/s615b/Andy-Murray.jpg' })
athlete12 = Athlete.new({'name' => 'Roger Federer', 'nation_id' => n2.id, 'athlete_stats' => 'Age: 34', 'athlete_image' => 'http://www4.pictures.zimbio.com/gi/Roger+Federer+Olympics+Day+1+Tennis+x0cEehqlOEhl.jpg' })
athlete13 = Athlete.new({'name' => 'Juan Martin Del Potro', 'nation_id' => n6.id, 'athlete_stats' => 'Age: 27', 'athlete_image' => 'http://www3.pictures.zimbio.com/gi/Olympics+Day+9+Tennis+C87IyTRBA8Bl.jpg' })
athlete14 = Athlete.new({'name' => 'Anky Van Grunsven', 'nation_id' => n7.id, 'athlete_stats' => 'Age: 32', 'athlete_image' => 'https://40.media.tumblr.com/tumblr_m85by3GQ6l1rcf3imo1_500.jpg'})
athlete15 = Athlete.new({'name' => 'Usain Bolt', 'nation_id' => n9.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'http://media.al.com/sports_impact/photo/london-olympics-athletics-men-b587db5116f1c5cc.jpg'})
athlete16 = Athlete.new({'name' => 'Yohan Blake', 'nation_id' => n9.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'http://media.al.com/sports_impact/photo/london-olympics-athletics-men-b587db5116f1c5cc.jpg'})
athlete17 = Athlete.new({'name' => 'Justin Gatlin', 'nation_id' => n3.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'http://media.al.com/sports_impact/photo/london-olympics-athletics-men-b587db5116f1c5cc.jpg'})
athlete18 = Athlete.new({'name' => 'Greg Rutherford', 'nation_id' => n1.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Greg_Rutherford_Gold_Medal_in_Long_Jump_crop.jpg'})
athlete19 = Athlete.new({'name' => 'Mitchell Watt', 'nation_id' => n8.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Greg_Rutherford_Gold_Medal_in_Long_Jump_crop.jpg'})
athlete20 = Athlete.new({'name' => 'Will Claye', 'nation_id' => n3.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Greg_Rutherford_Gold_Medal_in_Long_Jump_crop.jpg'})
athlete21 = Athlete.new({'name' => 'Nicola Spirig', 'nation_id' => n2.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Greg_Rutherford_Gold_Medal_in_Long_Jump_crop.jpg'})
athlete22 = Athlete.new({'name' => 'Lisa Norden', 'nation_id' => n10.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Greg_Rutherford_Gold_Medal_in_Long_Jump_crop.jpg'})
athlete23 = Athlete.new({'name' => 'Erin Densham', 'nation_id' => n8.id, 'athlete_stats' => 'Age: 29', 'athlete_image' => 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Greg_Rutherford_Gold_Medal_in_Long_Jump_crop.jpg'})

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
