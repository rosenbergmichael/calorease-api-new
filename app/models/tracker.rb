class Tracker < ApplicationRecord
  has_many :foods
  validates :day, :date, presence: true

  def update_cal(food)
    self.totalcal = self.totalcal + food.calories
    self.save
  end

  def delete_food(food)
    self.totalcal = self.totalcal - food.calories
    self.save
  end

end