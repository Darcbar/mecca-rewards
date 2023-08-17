class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :club_name
      t.string :club_type
      t.string :club_website
      t.integer :member_count
      t.string :contact_name
      t.string :contact_email

      t.timestamps
    end
  end
end
