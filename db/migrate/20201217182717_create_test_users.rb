class CreateTestUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :test_users do |t|
      t.string :username
    end
    add_index :test_users, :username, unique: true
  end
end
