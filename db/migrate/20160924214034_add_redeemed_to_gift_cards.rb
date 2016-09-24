class AddRedeemedToGiftCards < ActiveRecord::Migration
  def change
    add_column :gift_cards, :redeemed, :boolean
  end
end
