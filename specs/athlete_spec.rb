require('minitest/autorun')
require('minitest/rg')
require_relative('../models/athlete')

class TestAthlete < MiniTest::Test

  def setup
    @athlete1 = Athlete.new({ 'name' => 'Ben Maher'})
    @athlete2 = Athlete.new({ 'name' => 'Steve Guerdat' })
    @athlete3 = Athlete.new({ 'name' => 'Reed Kesler'})
    @athlete4 = Athlete.new({ 'name' => 'Piuz Schwizer' })

    @athletes = [@athlete1, @athlete2, @athlete3, @athlete4]
  end

  def test_get_athlete_name
    assert_equal('Ben Maher', @athlete1.name)
    assert_equal('Steve Guerdat', @athlete2.name)
  end

  end