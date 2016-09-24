class RewardsController < ApplicationController
  def new
    merchant
  end

  private

  def merchant
    @merchant ||= Merchant.find_by(id: params[:merchant_id])
  end
end