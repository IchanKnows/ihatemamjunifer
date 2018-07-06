class PageController < ApplicationController

	def home
		@hate = Hate.all
	end

	


end