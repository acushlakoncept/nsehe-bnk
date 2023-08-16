class SignupMailer < ApplicationMailer
  layout 'mailer'

  def signup_email()
    # @form_data = JSON.parse(form_submit.data)
    pp '🔥 reached here 🔥'

    mail(to: 'acushla4real@gmail.com', from: 'no-reply@alqib.com', subject: 'Welcome to Alqib')
  end
end