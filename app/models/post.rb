class Post < ActiveRecord::Base
  validates :name,  :presence => true
  validates :content,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
 
  has_many :comments
  attr_accessible :content, :name, :title
end
