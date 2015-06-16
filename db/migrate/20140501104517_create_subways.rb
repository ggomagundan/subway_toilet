class CreateSubways < ActiveRecord::Migration
  def change
    create_table :subways do |t|
      t.string :subway_name
      t.string :subway_number

      t.timestamps
    end
  end
end
