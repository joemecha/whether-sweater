class ImageCredits
  attr_reader :author,
              :description,
              :source

  def initialize(data)
    @author = data[:name]
    @source = data[:links][:html]
  end
end
