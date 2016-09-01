class NoobsController < ApplicationController
	def index
		@noobs = Noob.all
	end

	def create
		
	end
end
