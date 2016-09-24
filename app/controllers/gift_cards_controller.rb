class GiftCardsController < ApplicationController
  def index
    @gift_cards = GiftCard.for_user(current_user).includes(:merchant)
  end

  def show
    redirect_to merchants_path
  end

  def create 
    gift_card = merchant.gift_cards.new(user: current_user, amount: merchant.cash_prize)
    if gift_card.save
      gift_card.reset_rewards
      redirect_to merchant_gift_cards_path(merchant)
    else
      flash[:alert] = "Something went wrong claiming your gift card."
      redirect_to root_path
    end
  end

  private 

  def merchant
    @merchant ||= Merchant.find_by(id: params[:merchant_id])
  end
end