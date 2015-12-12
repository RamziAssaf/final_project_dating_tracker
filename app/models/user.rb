class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # VALIDATIONS
  validates :username, :presence => true, :uniqueness => true
  validates :gender, :presence => true

  # ASSOCIATIONS
  has_many :couples

end
