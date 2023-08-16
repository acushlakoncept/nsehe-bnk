class SignUpMailerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    SignupMailer.signup_email
  end
end
