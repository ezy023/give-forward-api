class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :username, :email, :password, :client_token
      t.timestamps
    end
  end
end
