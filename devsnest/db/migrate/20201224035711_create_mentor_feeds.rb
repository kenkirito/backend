class CreateMentorFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :mentor_feeds do |t|
      t.string :user_id
      t.integer :mentor_id
      t.text :feedback
      t.integer :timeGiven
      t.integer :capability

      t.timestamps
    end
  end
end