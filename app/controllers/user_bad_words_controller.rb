class UserBadWordsController < ApplicationController
  def create
    binding.pry
    words_array = user_bad_word_params[:bad_words].downcase.split(",").map do |word|
      BadWord.where(word: word.strip).find_or_create!
    end
    words_array.each do |word|
      UserBadWord.create (user: current_user, word: BadWord.find(word: word))
    end
    redirect_to bad_words_path
    end
  end

  protected

  def user_bad_word_params
    params.require(:user_bad_words).permit(:bad_words)
  end

end
