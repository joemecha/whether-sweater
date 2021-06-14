require 'rails_helper'

RSpec.describe Image do
  describe 'it returns all required image data for provided location' do
    it 'contains image url, location, and image credits' do
      data = {
            "id": "A4RpHR83luM",
            "created_at": "2021-05-01T04:12:54-04:00",
            "updated_at": "2021-06-13T03:22:14-04:00",
            "promoted_at": null,
            "width": 5954,
            "height": 3969,
            "color": "#0c2626",
            "blur_hash": "L867}^NGNIxY0gxaxENb==RkWXs,",
            "description": "Night Time Downtown Denver",
            "alt_description": "city skyline during night time",
            "urls": {
                "raw": "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?ixid=MnwyMzkzMTR8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfDB8fHwxNjIzNjMyOTAw&ixlib=rb-1.2.1",
                "full": "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMzkzMTR8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfDB8fHwxNjIzNjMyOTAw&ixlib=rb-1.2.1&q=85",
                "regular": "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMzkzMTR8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfDB8fHwxNjIzNjMyOTAw&ixlib=rb-1.2.1&q=80&w=1080",
                "small": "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMzkzMTR8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfDB8fHwxNjIzNjMyOTAw&ixlib=rb-1.2.1&q=80&w=400",
                "thumb": "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMzkzMTR8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfDB8fHwxNjIzNjMyOTAw&ixlib=rb-1.2.1&q=80&w=200"
            },
            "links": {
                "self": "https://api.unsplash.com/photos/A4RpHR83luM",
                "html": "https://unsplash.com/photos/A4RpHR83luM",
                "download": "https://unsplash.com/photos/A4RpHR83luM/download",
                "download_location": "https://api.unsplash.com/photos/A4RpHR83luM/download?ixid=MnwyMzkzMTR8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfDB8fHwxNjIzNjMyOTAw"
            },
            "categories": [],
            "likes": 2,
            "liked_by_user": false,
            "current_user_collections": [],
            "sponsorship": null,
            "user": {
                "id": "t2RB-3lbgSk",
                "updated_at": "2021-06-12T10:51:42-04:00",
                "username": "rdehamer",
                "name": "Ryan De Hamer",
                "first_name": "Ryan",
                "last_name": "De Hamer",
                "twitter_username": null,
                "portfolio_url": "http://www.dehamermedia.com",
                "bio": "Midwest -> Anywhere\r\nMy images are collected all around the country working with brands, athletes and fitness influencers",
                "location": null,
                "links": {
                    "self": "https://api.unsplash.com/users/rdehamer",
                    "html": "https://unsplash.com/@rdehamer",
                    "photos": "https://api.unsplash.com/users/rdehamer/photos",
                    "likes": "https://api.unsplash.com/users/rdehamer/likes",
                    "portfolio": "https://api.unsplash.com/users/rdehamer/portfolio",
                    "following": "https://api.unsplash.com/users/rdehamer/following",
                    "followers": "https://api.unsplash.com/users/rdehamer/followers"
                },
                "profile_image": {
                    "small": "https://images.unsplash.com/profile-1577912636161-6a3ada136470image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
                    "medium": "https://images.unsplash.com/profile-1577912636161-6a3ada136470image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
                    "large": "https://images.unsplash.com/profile-1577912636161-6a3ada136470image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"
                },
                "instagram_username": "Ryan_dehamer",
                "total_collections": 6,
                "total_likes": 0,
                "total_photos": 69,
                "accepted_tos": true,
                "for_hire": false
            }

      image = Image.new(data)
      expect(image.id).to eq(nil)
      expect(image.type).to eq("image")
      expect(image.attributes.count).to eq(3)
      expect(image[:attributes][:image].to have_key(:location)
      expect(image[:attributes][:image].to have_key(:image_url)
      expect(image[:attributes][:image].to have_key(:credit)
      expect(image[:attributes][:credit].to have_key(:source)
      expect(image[:attributes][:credit].to have_key(:author)
      expect(image[:attributes][:credit].to have_key(:logo)
    end
  end 
end 