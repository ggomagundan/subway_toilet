class CreateAppInfos < ActiveRecord::Migration
  def change
    create_table :app_infos do |t|
      t.string :db_server
      t.string :image_server
      t.string :android_version
      t.string :ios_version

      t.timestamps
    end
  end
end
