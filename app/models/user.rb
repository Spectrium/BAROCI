class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable, 
     :recoverable, :rememberable, :trackable,
     :omniauth_providers => [:facebook, :google_oauth2]
  has_many :comments
  has_many :surveys

  has_one_attached :portrait

  has_many :user_provider, :dependent => :destroy

end
