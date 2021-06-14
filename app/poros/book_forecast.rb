class BookForecast
  attr_reader :summary,
              :temperature

  def initialize(data)
    require 'pry'; binding.pry
    @summary = data[:weather].first[:description]
    @temperature = ((data[:temp].round(0).to_s) + " F")
  end
end
