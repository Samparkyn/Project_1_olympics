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

end