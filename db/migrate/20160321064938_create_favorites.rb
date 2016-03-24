class CreateFavolites < ActiveRecord::Migration
  def change
    create_table :favolites do |t|
      t.references :user, index: true
      t.references :micropost, index: true

      t.timestamps null: false
      
      
    end
  end
end
