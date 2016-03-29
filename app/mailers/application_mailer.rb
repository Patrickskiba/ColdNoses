class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
  
  def contact_email(contact)
    @contact = contact
    mail(to: Rails.application.secrets.email_provider_username, from: @contact.email, :subject => "Website Contact")
  end
end
