class User < ActiveRecord::Base
  attr_accessible :name, :groups
  has_many :maps
  has_and_belongs_to_many :groups

  def crypted_name
    name.crypt(created_at.to_s)
  end
end
