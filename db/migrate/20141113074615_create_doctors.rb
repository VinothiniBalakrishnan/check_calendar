class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :full_name
      t.integer :overall_rating
      t.integer :rating
      t.boolean :is_recommanded

      t.timestamps null: false
    end
  end
end
