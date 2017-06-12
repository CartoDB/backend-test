class Map < ActiveRecord::Base
  attr_accessible :category, :mapviews, :title, :user
  belongs_to :user
end
