class Work < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :url
      
      t.timestamps
    end
  end
end
