class Image
  attr_reader :id,
              :attributes


  def initialize(data)
    @id = nil
    @attributes = { "image" => "#{data[:attributes]}"
  end
end