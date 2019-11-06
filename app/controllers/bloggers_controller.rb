class BloggersController < ApplicationController
    
    def index
        @bloggers = Blogger.all 
    end 

    def new
        @blogger = Blogger.new
    end
    
    def create 
        @blogger = Blogger.new
        @blogger.name = params[:name]
        @blogger.bio = params[:bio]
        @blogger.age = params[:age]
        # byebug
        if @blogger.valid? == true
        @blogger.save
        redirect_to blogger_path(@blogger)
        # else  
        #     redirect_to new_blogger_path(@blogger)
        end 
    end 

    def edit 
    end 

    def update 
    end 


    def show 
        @blogger = Blogger.find_by(:id => params[:id])
    end 

    def destroy
    end 

end 

