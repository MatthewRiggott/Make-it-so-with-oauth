class BadWord < ActiveRecord::Base
  has_many :users, through: :user_bad_words
end
