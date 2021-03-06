class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model



has_and_belongs_to_many :albums
has_and_belongs_to_many :arrangements
has_and_belongs_to_many :positions
has_and_belongs_to_many :anecdotes
has_and_belongs_to_many :history_articles
has_and_belongs_to_many :recordings
has_and_belongs_to_many :photographs

end
