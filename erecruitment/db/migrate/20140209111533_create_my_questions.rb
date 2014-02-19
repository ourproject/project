class CreateMyQuestions < ActiveRecord::Migration
  def change
    create_table :my_questions do |t|
      t.text :question
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d
      t.string :anwser
      t.string :question_type
      t.string :created_by
      t.integer :difficulty_level

      t.timestamps
    end
  end
end
