class MailList < ApplicationRecord
  validates_presence_of :email
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  def subscribe
    @mailchimp = Gibbon::Request.new(api_key: Rails.application.secrets.mailchimp_api_key)
    @list_id = Rails.application.secrets.mailchimp_list_id
    @result = @mailchimp.list(@list_id).members.create(
             body:{
                 email_address: :user.email,
                 status: 'subscribed',
                 merge_fields: {FNAME: :user.first_name, LNAME: :user.last_name}
             })
    Rails.logger.info("Subscribed #{self.email} to MailChimp") if @result = true
  end
end