class UserBadWord < ActiveRecord::Base
  belongs_to :user
  belongs_to :bad_word
end
