class Merchant < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :meals_required
  validates_presence_of :cash_prize
  validates_presence_of :logo_url

  validates_numericality_of :meals_required
  validates_numericality_of :cash_prize
end