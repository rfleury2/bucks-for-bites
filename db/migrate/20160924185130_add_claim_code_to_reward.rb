class AddClaimCodeToReward < ActiveRecord::Migration
  def change
    add_column :rewards, :claim_code, :string
  end
end
