class Foodtruck < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_many :messages
end
