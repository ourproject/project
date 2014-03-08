class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :test_id
      t.string :user_id
      t.string :question_id
      t.string :selected_answer

      t.timestamps
    end
  end
end
