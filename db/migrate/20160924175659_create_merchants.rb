class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.integer :meals_required
      t.money :cash_prize_cents
      t.string :logo_url

      t.timestamps
    end
  end
end
