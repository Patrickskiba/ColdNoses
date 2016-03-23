class CreateContactUs < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_us do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
