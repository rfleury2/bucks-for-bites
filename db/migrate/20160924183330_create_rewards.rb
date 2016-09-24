class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.belongs_to :user
      t.belongs_to :merchant
      t.boolean :redeemed

      t.timestamps
    end
  end
end
