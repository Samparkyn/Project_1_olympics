require('minitest/autorun')
require('minitest/rg')
require_relative('../models/result')

class TestResult < MiniTest::Test

 def setup

  @n1 = Result.new({ 'name' => 'Great Britain', 'nation_id' => '1' })
  @n2 = Result.new({ 'name' => 'Switzerland', 'nation_id' => '2' })
  @n3 = Result.new({ 'name' => 'USA', 'nation_id' => '3' })
  @n4 = Result.new({ 'name' => 'France', 'nation_id' => '4'})
  @n5 = Result.new({ 'name' => 'Germany', 'nation_id' => '5'})
  @n6 = Result.new({ 'name' => 'Argentina', 'nation_id' => '6'})
  @n7 = Result.new({'name' => 'Netherlands', 'nation_id' => '7'})


  @athlete1 = Result.new({ 'name' => 'Ben Maher', 'nation_id' => '1' })
  @athlete2 = Result.new({ 'name' => 'Steve Guerdat', 'nation_id' => '2' })
  @athlete3 = Result.new({ 'name' => 'Reed Kesler', 'nation_id' => '3' })
  @athlete4 = Result.new({ 'name' => 'Piuz Schwizer', 'nation_id' => '4' })
  @athlete5 = Result.new({'name' => 'Charlotte Dujardin', 'nation_id' => '5' })
  @athlete6 = Result.new({'name' => 'Carl Hester', 'nation_id' => '6' })
  @athlete7 = Result.new({'name' => 'Marcus Ehning', 'nation_id' => '7' })

   @result = Result.new( {
            'athlete_id' => 1,
           'gold_id' => 1,
           'silver_id' => 2,
           'bronze_id' => 3
    } )
   @events = [ @event ]
 end

  def test_win_gold?
  result = @result.win_gold?(2)
  assert_equal(true, result)
  end

  end