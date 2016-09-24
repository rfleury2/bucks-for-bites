class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.integer :meals_required
      t.float :cash_prize
      t.string :logo_url

      t.timestamps
    end
  end
end
