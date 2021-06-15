class BookForecast
  attr_reader :summary,
              :temperature

  def initialize(data)
    @summary = data[:current][:weather].first[:description]
    @temperature = "#{data[:current][:temp].round} F"
  end
end
