class AddImageToImagepost < ActiveRecord::Migration[5.1]
  def change
    add_column :imageposts, :image, :string
  end
end
