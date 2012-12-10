class Koszyk < ActiveRecord::Base
  # attr_accessible :title, :body
has_many :polaczenies, :dependent => :destroy
end
