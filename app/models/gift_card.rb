class GiftCard < ActiveRecord::Base
  belongs_to :user
  belongs_to :merchant
  monetize :amount_cents

  validates_presence_of :user
  validates_presence_of :merchant
  validates_presence_of :amount_cents

  def reset_rewards
    user.rewards.where(merchant: merchant).last(merchant.meals_required).each do |reward|
      reward.redeemed = true
      reward.save!
    end
  end
end