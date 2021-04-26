class AddLinkToPedals < ActiveRecord::Migration[6.1]
  def change
    add_column :pedals, :image_link, :string
  end
end
