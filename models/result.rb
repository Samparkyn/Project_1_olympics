class Result

  attr_reader :nations, :athletes, :events

  def initialize(options)
    @nations = options['nations']
    @athletes = options['athletes']
    @events = options['events']
  end

  def list_events
    return @events.map { |event| event.name }
  end

  def did_win_gold?(nation_id)
    total = @events.select { |event| event.nation_gold?(nation_id)}
    return total.length
  end

  def did_win_silver?(nation_id)
    total = @events.select { |event| event.nation_silver?(nation_id)}
    return total.length
  end

  def did_win_bronze?(nation_id)
    total = @events.select { |event| event.nation_bronze?(nation_id)}
    return total.length
  end

  def total_gold_points(nation_id)
    (did_win_gold?(nation_id) * 5)
  end

  def total_silver_points(nation_id)
    (did_win_silver?(nation_id) * 3)
  end

  def total_bronze_points(nation_id)
    (did_win_bronze?(nation_id) * 1)
  end

  def total_points(nation_id)
    (total_gold_points(nation_id) + total_silver_points(nation_id) + total_bronze_points(nation_id))
  end

end