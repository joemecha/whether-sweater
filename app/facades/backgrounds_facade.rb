class BackgroundsFacade
  def self.get_background_image_for_a_city(location)
    json = ImageService.fetch_background_image(location)
    Image.new(json)
  end
end
