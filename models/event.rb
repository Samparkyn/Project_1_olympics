require('pg')
require_relative('../sql_runner')

class Event

  attr_reader :id, :event_name, :gold_id, :silver_id, :bronze_id

  def initialize(options)
    @id = options['id']
    @event_name = options['event_name']
    @gold_id = options['gold_id']
    @silver_id = options['silver_id']
    @bronze_id = options['bronze_id']
  end

  def self.all()
    sql = "SELECT * FROM events"
    events = SqlRunner.run_sql( sql )
    return events.map { |event| Event.new(event) }
  end

  def save()
    sql = "INSERT INTO events (
      event_name,
      gold_id,
      silver_id,
      bronze_id) VALUES (
      '#{@event_name}',
      '#{@gold_id}',
      '#{@silver_id}',
      '#{@bronze_id}'
      )"
      SqlRunner.run_sql(sql)
      return last_entry()
  end

  def athletes()
   sql = "select * from athletes where id = #{@gold_id} OR id = #{@silver_id} OR id = #{@bronze_id}";
   athletes = SqlRunner.run_sql(sql)
   athletes.map {|athlete| Athlete.new(athlete)}
  end

  def nations()
    sql = "SELECT * FROM nations WHERE id =#{@gold_id} OR id = #{@silver_id} OR id = #{@bronze_id}";
    nations = SqlRunner.run_sql(sql)
    nations.map { |nation| Nation.new(nation)}
  end

  def self.find(id)
   sql = "SELECT * FROM events WHERE id = #{id}"
   result = SqlRunner.run_sql(sql)
   nation = Event.new(result[0])
  end

  def last_entry
    sql = "SELECT * from events ORDER BY id DESC limit 1;"
    return Event.map_item(sql)
  end

  def self.map_items(sql)
    events = SqlRunner.run_sql(sql)
    result = events.map { |e| Event.new(e)}
    return result
  end

  def self.map_item(sql)
    result = Event.map_items(sql)
    return result.first
  end

  def self.delete_all
    sql = "DELETE FROM events"
    SqlRunner.run_sql(sql)
  end

  def gold_athlete() #These methods return the nation id of the athlete who won, so I could calculate the nations total medals won.
    sql = "SELECT * FROM athletes WHERE id = #{@gold_id}"
    result = SqlRunner.run_sql(sql)
    gold_athlete = Athlete.new(result[0])
    return gold_athlete.nations.id
  end

  def silver_athlete()
    sql = "SELECT * FROM athletes WHERE id = #{@silver_id}"
    result = SqlRunner.run_sql(sql)
    silver_athlete = Athlete.new(result[0])
    return silver_athlete.nations.id
  end

  def bronze_athlete()
    sql = "SELECT * FROM athletes WHERE id = #{@bronze_id}"
    result = SqlRunner.run_sql(sql)
    bronze_athlete = Athlete.new(result[0])
    return bronze_athlete.nations.id
  end

  def gold_athlete_name() #These methods are the same as above, although simply return the name of the athlete who won each medal. Which I wanted for the individual event medal tables.
    sql = "SELECT * FROM athletes WHERE id = #{@gold_id}"
    result = SqlRunner.run_sql(sql)
    gold_athlete_name = Athlete.new(result[0])
    return gold_athlete_name.name
  end

  def silver_athlete_name()
    sql = "SELECT * FROM athletes WHERE id = #{@silver_id}"
    result = SqlRunner.run_sql(sql)
    silver_athlete_name = Athlete.new(result[0])
    return silver_athlete_name.name
  end

  def bronze_athlete_name()
    sql = "SELECT * FROM athletes WHERE id = #{@bronze_id}"
    result = SqlRunner.run_sql(sql)
    bronze_athlete_name = Athlete.new(result[0])
    return bronze_athlete_name.name
  end

  def nation_gold?(nation_id)
    if (nation_id == gold_athlete)
      return true
    end
  end

  def nation_silver?(nation_id)
    if (nation_id == silver_athlete)
      return true
    end
  end

  def nation_bronze?(nation_id)
    if (nation_id == bronze_athlete)
      return true
    end
  end

  def gold_athlete_flag()
    sql = "SELECT * FROM athletes WHERE id = #{@gold_id}"
    result = SqlRunner.run_sql(sql)
    gold_athlete = Athlete.new(result[0])
    return gold_athlete.nations.flag_url
  end

  def silver_athlete_flag()
    sql = "SELECT * FROM athletes WHERE id = #{@silver_id}"
    result = SqlRunner.run_sql(sql)
    silver_athlete = Athlete.new(result[0])
    return silver_athlete.nations.flag_url
  end

  def bronze_athlete_flag()
    sql = "SELECT * FROM athletes WHERE id = #{@bronze_id}"
    result = SqlRunner.run_sql(sql)
    bronze_athlete = Athlete.new(result[0])
    return bronze_athlete.nations.flag_url
  end


end