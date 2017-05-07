class PrioritiesController < ApplicationController
	def index
		@priorities = Priority.all
	end
end
