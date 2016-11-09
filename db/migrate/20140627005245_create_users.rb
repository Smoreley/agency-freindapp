class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :name
        t.string :provider
        t.string :uid
        t.string :profile_image
        
        t.integer :group_id
        
        t.references :user, foreign_key: true
        t.timestamps
    end
  end
end
