class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable, :recoverable, :rememberable, :validatable, :omniauthable, :confirmable, :registerable, :trackable, :timeoutable

  enum role: [:customer, :driver, :manager]

  validates_presence_of :first_name, :last_name, :email, :phone_number, :street_address, :city, :state, :zip, :role
end
