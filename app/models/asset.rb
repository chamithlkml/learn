class Asset < ActiveRecord::Base
  belongs_to :asset_type
  has_and_belongs_to_many :astags
end
