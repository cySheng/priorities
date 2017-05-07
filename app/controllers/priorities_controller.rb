class PrioritiesController < ApplicationController
	def index
		@priorities = Priority.all
	end

	def new
		@priority = Priority.new
	end
end
