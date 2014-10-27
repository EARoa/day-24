class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.integer :user_id
      t.string :deep_thought

      t.timestamps
    end
  end
end
