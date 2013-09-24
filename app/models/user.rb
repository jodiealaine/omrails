class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :token_authenticatable #, :validatable, :recoverable 

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name

  validates :name, :email, presence: true

  has_many :pins, :dependent => :destroy
end
