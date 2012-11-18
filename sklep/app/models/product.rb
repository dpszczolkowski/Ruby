class Product < ActiveRecord::Base
  attr_accessible :nazwa, :cena, :image_url, :opis
end
