class Reward < ActiveRecord::Base
  belongs_to :user
  belongs_to :merchant

  validates_presence_of :claim_code

  VALID_CODES = %w(a1b2c3 d1e2f3 g1h2i3)
  validates_inclusion_of :claim_code, :in => VALID_CODES, :message => "is not valid.  Please try a valid code."

  scope :active_count_for_user, -> (user) { where(user: user, redeemed: nil).count }
end