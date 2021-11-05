module TwitterServices
  class PostTweet
    def initialize(text)
      @text = text
    end

    def call
      begin
        url = "https://api.twitter.com/2/tweets"
        headers = '...'
        # TODO: To generate these headers you'll need to encode per Twitter's requirements
        # https://developer.twitter.com/en/docs/authentication/oauth-1-0a/creating-a-signature
        body = {
          'text'=> "#{@text}"
        }

        response = Faraday.post(url, body, headers)

        OpenStruct.new({success?: response.status == 200, payload: response.body})
      rescue => e
        puts e.message
      end
    end
  end

end
