class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :user_name, presence: true, length: { maximum: 50 }

  # allow users to update their accounts without passwords
  def update_without_current_password

end
