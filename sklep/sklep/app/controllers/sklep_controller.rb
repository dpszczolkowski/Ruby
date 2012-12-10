class SklepController < ApplicationController
  def index
	@produkts = Produkt.all
  end
end
