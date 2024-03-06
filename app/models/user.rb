class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.find_for_database_authentication(conditions={})
      find_by(username: conditions[:email]) || find_by(email: conditions[:email])
  end
end
