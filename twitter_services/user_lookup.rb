module TwitterServices
  class UserLookup
    def initialize(username)
      @username = username
    end

    def call
      begin
        url = "https://api.twitter.com/2/users/by/username/#{@username}"
        headers = {
          'Accept'=> 'application/json',
          'Authorization'=> "Bearer #{ENV['TWITTER_BEARER_TOKEN']}"
        }

        response = Faraday.get(url, nil, headers)
        OpenStruct.new({success?: response.status == 200, payload: response})
      rescue => e
        puts e.message
      end
    end
  end

end
