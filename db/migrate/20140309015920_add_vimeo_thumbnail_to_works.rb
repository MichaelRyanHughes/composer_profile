class AddVimeoThumbnailToWorks < ActiveRecord::Migration
  def change
    add_column :works, :vimeo_thumbnail, :string
  end
end
