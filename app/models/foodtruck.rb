class Foodtruck < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy
end
