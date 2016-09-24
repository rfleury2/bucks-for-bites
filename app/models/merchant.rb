class Merchant < ActiveRecord::Base
  has_many :rewards
  monetize :cash_prize_cents

  validates_presence_of :name
  validates_presence_of :meals_required
  validates_presence_of :logo_url

  validates_numericality_of :meals_required
end