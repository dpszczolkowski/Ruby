class ApplicationController < ActionController::Base
  protect_from_forgery
	private

	def aktualny_koszyk
		Koszyk.find(session[:koszyk_id])
	rescue ActiveRecord::RecordNotFound
	koszyk=Koszyk.create
	session[:koszyk_id] = koszyk.id
	koszyk
	end
end
