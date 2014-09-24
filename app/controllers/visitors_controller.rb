class VisitorsController < ApplicationController
	def index
		@visitor = Visitor.new
	end
end