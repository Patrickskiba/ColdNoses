class User < ApplicationRecord
  has_many :comments
  validates :name, :email, presence: true
  validates :password, :password_confirmation, presence: true, on: :create
  validates :password, confirmation: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def name
    [first_name, last_name].compact.join(' ')
  end

  private
  def password_required?
    new_record? ? super : false
  end
end
