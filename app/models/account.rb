class Account < ApplicationRecord
  belongs_to :user
  belongs_to :status
  belongs_to :account_type
  belongs_to :currency
  before_create :gen_account_number

  validates! :account_number, uniqueness: true

  private

  def gen_account_number
    self.account_number = loop do
      number = ('%010d' % rand(0..9_999_999_999)).to_s
      break number unless Account.exists?(account_number: number)
    end
  end
end
