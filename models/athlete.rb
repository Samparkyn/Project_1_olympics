require('pg')
require_relative('../sql_runner')

class Athlete

  attr_reader :id, :nation_id, :name

  def initialize(options)
    @id = options['id']
    @nation_id = options['nation_id']
    @name = options['name']
  end

  def events
    sql = "select * from events where gold_id = #{@id} OR silver_id = #{@id} OR bronze_id = #{@id}";
    events = SqlRunner.run_sql(sql)
    events.map {|event| Event.new(event)}
  end

  def nations()
    sql = "SELECT * FROM nations WHERE id = #{@nation_id} ORDER BY name"
    result = SqlRunner.run_sql( sql )
    Nation.new( result[0] )
  end

 def self.all()
   sql = "SELECT * FROM athletes"
   athletes = SqlRunner.run_sql( sql )
   return athletes.map { |athlete| Athlete.new(athlete) }
 end

 def save()
   sql = "INSERT INTO Athletes (
    name,
    nation_id) VALUES (
    '#{ @name }',
    '#{@nation_id}'
    )"
   SqlRunner.run_sql( sql )
   return last_entry()
 end

 def self.find(id)
  sql = "SELECT * FROM athletes WHERE id = #{id}"
  result = SqlRunner.run_sql(sql)
  nation = Athlete.new(result[0])
 end

 def last_entry
   sql = "SELECT * FROM Athletes ORDER BY id DESC limit 1;"
   return Athlete.map_item(sql)
 end

 def self.map_items(sql)
   athletes = SqlRunner.run_sql( sql )
   result = athletes.map { |a| Athlete.new( a ) }
   return result
 end

 def self.map_item(sql)
   result = Athlete.map_items(sql)
   return result.first
 end

 def self.delete_all
   sql = "DELETE FROM athletes"
   SqlRunner.run_sql(sql)
 end

end