class AddDToZips < ActiveRecord::Migration[7.0]
  def change
    add_column :zips, :d, :float
  end
end
