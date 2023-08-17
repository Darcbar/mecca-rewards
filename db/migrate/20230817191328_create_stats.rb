class CreateStats < ActiveRecord::Migration[7.0]
  def change
    create_table :stats do |t|
      t.integer :clubs_count,   null: false, default: 0
      t.integer :members_count, null: false, default: 0

      t.integer :singleton_guard

      t.timestamps
    end

    add_index :stats, :singleton_guard, unique: true
  end
end
