class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :role
      t.string :name
      t.string :email_id
      t.string :password
      t.string :date_of_birth
      t.string :qualification
      t.string :address

      t.timestamps
    end
  end
end
