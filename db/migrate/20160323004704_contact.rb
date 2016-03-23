class Contact < ActiveRecord::Migration[5.0]
  def change
    create table :contact do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :content
    end
  end
end
