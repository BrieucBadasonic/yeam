class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reports
  has_many :binomes

  validates :first_name, :last_name, :telephone, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
  validates :telephone, uniqueness: true


end
