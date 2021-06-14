require 'rails_helper'

RSpec.describe ImageCredits do
  describe 'it encapsulates image credits data' do 
    it 'holds name and url of photographer' do 
      credits_info = {
                "id": "t2RB-3lbgSk",
                "updated_at": "2021-06-12T10:51:42-04:00",
                "username": "rdehamer",
                "name": "Ryan De Hamer",
                "first_name": "Ryan",
                "last_name": "De Hamer",
                "twitter_username": nil,
                "portfolio_url": "http://www.dehamermedia.com",
                "bio": "Midwest -> Anywhere\r\nMy images are collected all around the country working with brands, athletes and fitness influencers",
                "location": nil,
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

      credits = ImageCredits.new(credits_info)
      expect(credits.author.class).to eq(String)
      expect(credits.source.class).to eq(String)
    end 
  end
end