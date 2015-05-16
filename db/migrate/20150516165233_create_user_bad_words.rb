class CreateUserBadWords < ActiveRecord::Migration
  def change
    create_table :user_bad_words do |t|
      t.integer :user_id, null: false
      t.integer :bad_word_id, null: false
    end

    add_index :user_bad_words, [:user_id, :bad_word_id], unique: true
  end
end
