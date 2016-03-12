class AnimalsController < ApplicationController
	def list
    @animals = Animal.all.order(:name)
  end
end
