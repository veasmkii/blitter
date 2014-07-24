class Blit < ActiveRecord::Base
  attr_accessible :created, :message, :user
  validates :user, presence: true, :length => { :maximum => 50}
  validates :message, presence: true, :length => { :maximum => 140 }
end
