class Role < ActiveRecord::Base
	has_many :users
	has_many :idea
	has_many :jobs through :users
end
