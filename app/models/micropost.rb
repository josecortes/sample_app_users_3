class Micropost < ActiveRecord::Base
  attr_accesible :content
  belongs_to :user
  
  validate :content, :presence => true,
           :length => { :maximum => 150}
           
  default_scope :order => 'microposts.created_at DESC'
end
