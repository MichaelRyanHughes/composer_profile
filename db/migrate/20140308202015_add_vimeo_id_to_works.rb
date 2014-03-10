class AddVimeoIdToWorks < ActiveRecord::Migration
  def change
    add_column :works, :vimeo_id, :string
  end
end
