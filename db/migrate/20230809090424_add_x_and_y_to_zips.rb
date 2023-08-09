class AddXAndYToZips < ActiveRecord::Migration[7.0]
  def change
    add_column :zips, :x, :integer
    add_column :zips, :y, :integer
  end
end
