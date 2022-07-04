class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  enum gender:{
    man: 0,
    woman: 1
  }

  enum label:{
    expart: 0,
    other: 1
  }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :confirmable, :timeoutable, :trackable
end
