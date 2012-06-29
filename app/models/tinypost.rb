class Tinypost < ActiveRecord::Base
  attr_accessible :text, :user_id

  belongs_to :user

  validates :text, :length => { :maximum => 100 }
end
