class User < ActiveRecord::Base

 has_many :tweets

 validates :first_name, :last_name, :location, :username, :email, presence: true

 validates :email, :username, uniqueness: true

end
