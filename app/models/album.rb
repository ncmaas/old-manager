class Album < ActiveRecord::Base

has_and_belongs_to_many :sob_classes 
has_and_belongs_to_many :arrangements 
has_and_belongs_to_many :users

end
