class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.boolean :admin
      t.string :image_url

      t.timestamps
    end
  end
end
