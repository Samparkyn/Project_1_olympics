require('pg')
require_relative('../sql_runner')

class Nation

  attr_reader :id, :name, :flag_url

  def initialize(options)
    @id = options['id']
    @name = options['name']
    @flag_url = options['flag_url']
  end

  def athletes()
    sql = "SELECT * FROM athletes WHERE nation_id = #{id}"
    athletes = SqlRunner.run_sql( sql )
    athletes.map {|athlete| Athlete.new( athlete )}
  end

  def self.all()
    sql = "SELECT * FROM nations"
    nations = SqlRunner.run_sql( sql )
    return nations.map { |nation| Nation.new(nation) }
  end


  def save()
    sql = "INSERT INTO Nations (
      name,
      flag_url) VALUES (
      '#{@name}',
      '#{@flag_url}'
      )"
      SqlRunner.run_sql(sql)
      return last_entry()
  end

  def self.find(id)
   sql = "SELECT * FROM nations WHERE id = #{id}"
   result = SqlRunner.run_sql(sql)
   nation = Nation.new(result[0])
  end

  def last_entry
    sql = "SELECT * from Nations ORDER BY id DESC limit 1;"
    return Nation.map_item(sql)
  end

  def self.map_items(sql)
    nations = SqlRunner.run_sql(sql)
    result = nations.map { |n| Nation.new(n)}
    return result
  end

  def self.map_item(sql)
    result = Nation.map_items(sql)
    return result.first
  end

  def self.delete_all
    sql = "DELETE FROM nations"
    SqlRunner.run_sql(sql)
  end

end