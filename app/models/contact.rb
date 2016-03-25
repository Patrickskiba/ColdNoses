class Contact < ApplicationRecord
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximum => 500
  def name
    [first_name, last_name].compact.join(' ')
  end

end
