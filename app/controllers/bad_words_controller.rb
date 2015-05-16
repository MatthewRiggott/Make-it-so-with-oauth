class BadWordsController < ApplicationController
  def index
    @user_bad_words = UserBadWord.new
    @bad_words = BadWord.new
  end
end
