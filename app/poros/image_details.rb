class ImageDetails
  attr_reader :image_url,
              :description,
              :credits

  def initialize(data)
    @image_url = data[:urls][:full]
    @description = data[:description]
    @credits = ImageCredits.new(data[:user])
  end
end
