class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates_presence_of :first_name, :last_name, :username, :country, :state, :city, :address, :security_question
  
  has_one :account
  after_create :send_email

  def send_email
    SignUpMailerJob.perform_later
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  has_one :account, dependent: :destroy
  has_many :transactions, dependent: :destroy

  def has_account?
    account ? true : false
  end

  def balance
    account.balance
  end

  def currency
    account.currency
  end

  def account_number
    account.account_number
  end

  def account_type
    account.account_type
  end

  def account_status
    account.status
  end

  def status_style
    account_status == 'Active' ? 'success' : 'danger'
  end

  def activate_user
    if account.nil?
      Account.create(user: self, account_type: 'Savings', currency: 'USD', status: 'Active')
    else
      account.update(account_type: 'Savings', currency: 'USD', status: 'Active')
    end
  end
end
