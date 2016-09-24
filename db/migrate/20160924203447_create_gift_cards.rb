class CreateGiftCards < ActiveRecord::Migration
  def change
    create_table :gift_cards do |t|
      t.belongs_to :user
      t.belongs_to :merchant
      t.money :amount_cents
      
      t.timestamps
    end
  end
end
