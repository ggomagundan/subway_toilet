class AddColumnHaveToiletToSubway < ActiveRecord::Migration
  def change
    add_column :subways, :have_toilet, :boolean
    add_column :subways, :toilet_up_place, :string
    add_column :subways, :toilet_down_place, :string
    add_column :subways, :before_subway, :integer
    add_column :subways, :after_subway, :integer
  end
end
