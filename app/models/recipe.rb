class Recipe < ActiveRecord::Base
	belongs_to :chapter
	has_and_belongs_to_many :tags
end
