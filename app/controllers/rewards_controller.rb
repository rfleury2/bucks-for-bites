class RewardsController < ApplicationController
  def new
    merchant
  end

  def create
    new_reward = current_user.rewards.new(merchant: merchant, claim_code: claim_code_param)
    if new_reward.save
      redirect_to merchant_reward_path(merchant, new_reward)
    else
      flash[:alert] = new_reward.errors.full_messages.last
      redirect_to new_merchant_reward_path(merchant)
    end
  end

  def show
    merchant
    reward
    get_counts
  end

  private

  def reward
    @reward ||= Reward.find_by(id: params[:id])
  end

  def get_counts
    @reward_count = merchant.rewards.where(user: current_user).count
    @reward_percentage_complete = @reward_count.to_f/@merchant.meals_required * 100
  end

  def merchant
    @merchant ||= Merchant.find_by(id: params[:merchant_id])
  end

  def claim_code_param
    params.require(:reward).permit(:claim_code)[:claim_code]
  end
end