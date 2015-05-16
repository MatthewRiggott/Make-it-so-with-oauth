class UserBadWord < ActiveRecord::Base

  validates :bad_word_id, presence: true
  validates :user_id, presence: true

end
