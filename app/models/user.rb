class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :blogs
        has_many :bookmarks
        has_one_attached :profile

        before_create :no_of_confession
        def no_of_confession
           self.noofconfession  =0
           self.noofblog = 0
        end
end
