class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :first_name
        t.string :last_name
        t.string :gender
        t.string :link
        t.string :email
        t.string :birthday
        t.string :provider
        t.string :uid
        t.string :profile_image
        
        t.references :group, foreign_key: true
        t.timestamps
    end
  end
end
