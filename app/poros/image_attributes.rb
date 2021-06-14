class ImageAttributes
  attr_reader :id,
              :attributes


  def initialize(data)
    @id = nil
    @attributes = ImageAttributes.new(data[:attributes])
  end
end