class CreateAccountTable < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :email 
    end
  end
end
