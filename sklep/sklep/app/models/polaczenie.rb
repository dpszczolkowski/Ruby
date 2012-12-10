class Polaczenie < ActiveRecord::Base
  attr_accessible :koszyk_id, :produkt_id
 belongs_to :produkt
 belongs_to :koszyk
end
