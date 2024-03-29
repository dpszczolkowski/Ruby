class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :image_url, :presence =>true
  validates :price, :numericality => {:greater_then_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format =>{
	:with => %r{\.(gif|jpg|png)$}i,
	:message => 'Dostepne formaty  GIF, JPG lub PNG .'
	}
has_many :line_items
has_many :orders, :through => :line_items

private
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else 
			errors.add(:base, 'Line Items present')
			return fals
		end
	end
#befor_destroy :ensure_not_referenced_by_any_line_item


end
