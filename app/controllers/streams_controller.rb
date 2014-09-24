class StreamsController < ApplicationController
	def index
		@stream = Stream.new
		#render :stream => true
	end
end