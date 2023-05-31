class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :blogs
        has_many :bookmarks
        has_one_attached :profile
        has_many :comments

      devise :trackable

        before_create :no_of_confession
        before_create :initialize_status


  def initialize_status
    self.status = 'inactive'
  end

        def no_of_confession
           self.noofconfession  =0
           self.noofblog = 0
        end
end
