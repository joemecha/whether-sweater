class Image
  attr_reader :id,
              :image


  def initialize(data)
    @id = nil
    @image = ImageDetails.new(data)
  end
end