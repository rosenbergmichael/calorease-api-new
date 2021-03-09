class Food < ApplicationRecord
  belongs_to :tracker
  
  validates :name, :calories, presence: true

end
