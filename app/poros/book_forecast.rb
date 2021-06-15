class BookForecast
  attr_reader :summary,
              :temperature

  def initialize(data)
    @summary = data[:current][:weather].first[:description]
    @temperature = (data[:current][:temp].round.to_s + " F")
  end
end
