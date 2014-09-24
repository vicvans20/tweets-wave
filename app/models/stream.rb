require 'tweetstream'
class Stream
	
	TweetStream.configure do |config|  
	  config.consumer_key       = ENV["CONSUMER_KEY"]
	  config.consumer_secret    = ENV["CONSUMER_SECRET"]
	  config.oauth_token        = ENV["OAUTH_TOKEN"]
	  config.oauth_token_secret = ENV["OAUTH_TOKEN_SECRET"]
	  config.auth_method        = :oauth
	end  

	def do_stream
		Rails.logger.debug 'Doing Stream!'
		cuenta = 0
		@statuses
		TweetStream::Client.new.track('mom') do |status|
			cuenta += 1
			@statuses << status
			puts "#{cuenta} : #{status.text}"
			break if cuenta >= 5
		end  
		Rails.logger.debug 'STREAM FINISHED THANKS'
	end
end