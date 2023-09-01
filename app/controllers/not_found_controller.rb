require 'prawn'

class NotFoundController < ApplicationController
	def index
		send_data generate_pdf,filename: 'hello.pdf', type: 'application/pdf'
	end

	private

	def generate_pdf
		Prawn::Document.new do
			text 'sharu', align: :center
			text "Address:"
			text "Email:"
		end.render
	end
end