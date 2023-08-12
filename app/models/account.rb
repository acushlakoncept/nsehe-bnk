class Account < ApplicationRecord
  belongs_to :user
  before_create :gen_account_number

  SAVINGS = 'Savings'.freeze
  CURRENT = 'Current'.freeze

  ACTIVE = 'Active'.freeze
  INACTIVE = 'Inactive'.freeze

  USD = 'USD'.freeze
  EUR = 'EUR'.freeze

  validates! :account_number, uniqueness: true
  enum account_type: { SAVINGS => 0, CURRENT => 1 }, _prefix: true
  enum status: { ACTIVE => 0, INACTIVE => 1 }, _prefix: true
  enum currency: { USD => 0, EUR => 1 }, _prefix: true

  def activate
    bybug
    if account.nil?
      Account.create(account_type: 'Savings', currency: 'USD', status: 'Active')
    else
      account.update(account_type: 'Savings', currency: 'USD', status: 'Active')
    end
  end

  private

  def gen_account_number
    self.account_number = loop do
      number = ('%010d' % rand(0..9_999_999_999)).to_s
      break number unless Account.exists?(account_number: number)
    end
  end

end
