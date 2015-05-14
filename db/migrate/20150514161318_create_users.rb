class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, uniqueness: :true
      t.timestamps null: false
    end
  end
end
