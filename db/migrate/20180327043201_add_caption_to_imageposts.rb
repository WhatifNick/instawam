class AddCaptionToImageposts < ActiveRecord::Migration[5.1]
  def change
    add_column :imageposts, :caption, :string
  end
end
