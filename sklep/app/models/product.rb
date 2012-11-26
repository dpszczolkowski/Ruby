class Product < ActiveRecord::Base
validates :nazwa, :opis, :presence => true
validates :cena, :numericality => {:greater_than_or_equal_to => 0.01}
validates :nazwa, :uniqueness =>true
  attr_accessible :nazwa, :cena, :image_url, :opis
end
