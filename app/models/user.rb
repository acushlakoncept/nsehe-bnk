class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates_presence_of :first_name, :last_name, :username, :country, :state, :city, :address, :security_question

  def full_name
    "#{first_name} #{last_name}"
  end
  has_one :account

  def has_account?
    account ? true : false
  end

  def balance
    "#{Currency.find(account.currency_id).symbol} #{account.balance}"
  end

  def account_number
    account.account_number
  end

  def account_type
    AccountType.find(account.account_type_id).name
  end

  def account_status
    Status.find(account.status_id).name
  end

  def status_style
    account_status == 'Active' ? 'success' : 'danger'
  end
end
