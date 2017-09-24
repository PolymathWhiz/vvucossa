class Comment < ApplicationRecord
  belongs_to :topic
  belongs_to :user

  validates_presence_of :user_id, :topic_id
end
