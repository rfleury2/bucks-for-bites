class Merchant < ActiveRecord::Base
  has_many :rewards
  has_many :gift_cards
  monetize :cash_prize_cents

  validates_presence_of :name
  validates_presence_of :meals_required
  validates_presence_of :logo_url

  validates_numericality_of :meals_required
end