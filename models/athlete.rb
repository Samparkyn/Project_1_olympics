require('pg')
require_relative('../sql_runner')

class Athlete

  attr_reader :id, :nation_id, :name

  def initialize(options)
    @id = options['id']
    @nation_id = options['nation_id']
    @name = options['name']
  end


 def self.all()
   sql = "SELECT * FROM athletes"
   athletes = SqlRunner.execute( sql )
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