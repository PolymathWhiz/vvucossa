class Topic < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  validates_presence_of :title, :description, :user_id
end
