class BooksController < ApplicationController
    def index 
        books = Book.all
        respond_to do |format|
            format.json {render json: books , status:200 }
        end
       
    end
    
    def create
        book = Book.new(params_book)
        if book.save 
            respond_to do |format|
            format.html {render html: books , status:200 }
            format.json {render json: books , status:200 }
        end
        end 
    else 
        respond_to do |format|
            format.json {render json: books , status:404 }
        end
            
        
    end
    def show
        book = Book.find(params[:id])
        respond_to do |format|
            format.jason {render jason: book, status:200}
    end
    def params_book
        params.permit(:name, :year, :code, :avaliable)
    end
end
