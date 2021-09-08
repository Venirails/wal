class PostmanMailer < ApplicationMailer
    
	def alert_admin(book_detail)
		@name = book_detail.name
		@author = book_detail.author
		@price = book_detail.price
       mail(:to=>"veni.rails@gmail.com",:subject=>"ALERT - A Book has been added!")
	end
end
