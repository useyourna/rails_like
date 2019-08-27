class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
    
belongs_to :posts
has_many :likes
has_many :liked_posts, through: :likes, source: :post    
    
  
end
