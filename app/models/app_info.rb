class AppInfo

  include Mongoid::Document
  include Mongoid::Timestamps

  field :db_server, type: String
  field :image_server, type: String
  field :android_version, type: String
  field :ios_version, type: String


end
