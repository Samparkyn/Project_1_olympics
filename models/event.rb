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
    events = SqlRunner.execute( sql )
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

end