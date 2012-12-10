class Produkt < ActiveRecord::Base
  default_scope :order => 'nazwa'
  has_many :polaczenies
  before_destroy :ensure_not_referenced_by_any_polaczenie
  private 
	def ensure_not_referenced_by_any_polaczenie
 		if polaczenies.empty?
			return true
		else
			errors.add(:base, 'Line items present')
			return false
		end
	end
	
  validates :cena, :opis, :img_url, :presence => true   
  validates :cena, :numericality => {:greater_than_or_equal_to => 0.01} # :message => 'Cena powinna byc wieksza od 0 zl' }
  validates :nazwa, :uniqueness => true # :message => 'Taka nazwa juz istnieje' }
  validates :img_url, :format => {
	:with => %r{\.(gif|jpg|png)$}i,
	:message => 'Zle rozszerzenie! -dopuszczalne to gif,jpg lub png' 
  }
  attr_accessible :cena, :img_url, :nazwa, :opis
end
