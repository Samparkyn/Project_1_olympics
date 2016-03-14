class Result

  attr_reader :nations, :athletes, :events

  def initialize(options)
    @nations = options['nations']
    @athletes = options['athletes']
    @events = options['events']
  end

  def list_events
    return @events.map { |event| events }
  end

end