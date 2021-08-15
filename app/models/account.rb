class Account < ApplicationRecord
  belongs_to :user
  before_save :account_number

  private

  def account_number
    self.account_number = ('%010d' % rand(0..9999999999)).to_i
  end
end