class AddBackgroundImageToLists < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :background_image, :string
  end
end
