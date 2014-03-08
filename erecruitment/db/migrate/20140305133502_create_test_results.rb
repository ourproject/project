class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.string :test_id
      t.string :user_id
      t.string :marks
      t.string :pass_or_fail
      t.string :notification_status

      t.timestamps
    end
  end
end
