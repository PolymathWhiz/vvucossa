class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :sch_id, :full_name 
  validates :sch_id, uniqueness: true
  validates_length_of :sch_id, is: 13
  validates :full_name, length: { maximum: 100 }

  has_many :topics, dependent: :destroy
  has_many :comments, dependent: :destroy
end
