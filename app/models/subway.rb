class Subway < ActiveRecord::Base


end
=begin
class Subway

  include Mongoid::Document
  include Mongoid::Timestamps


  field :subway_name, type: String
  field :subway_number, type: String
  field :have_toilet, type: Boolean
  field :toilet_up_place, type: String
  field :toilet_down_place, type: String
  field :before_subway, type: String
  field :after_subway, type: String

  def before_subway_name
    Subway.find(self.before_subway).subway_name
  end

  def after_subway_name
    Subway.find(self.after_subway).subway_name
  end
end
=end
