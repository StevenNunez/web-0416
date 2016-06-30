class Drink < ActiveRecord::Base
  has_many :ingredients
end
