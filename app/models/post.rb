#ngaBlog David Prior
class Post < ActiveRecord::Base

  	has_many :comments	
	validates_presence_of :title
end
