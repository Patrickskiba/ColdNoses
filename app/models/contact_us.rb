class ContactUs
    include ActiveModel::Model
    attr_accessor :name, :string
    validates_presence_of :name
    attr_accessor :email, :string
    validates_presence_of :email
    validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
    attr_accessor :content, :string
    validates_presence_of :content
    validates_length_of :content, :maximum => 500
end
