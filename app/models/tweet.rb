class Tweet < ApplicationRecord
  belongs_to :user
  scope :timeline, ->(user) { where(user:) }
end
