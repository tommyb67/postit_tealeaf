class CategoriesController < ApplicationController

 def index
 end

 def new
  @category = Category.new
 end


 def create
    @category = Category.new(post_params)
    @category.creator = User.first # TO DO: change once we have authentication

    if @category.save
      flash[:notice] = "Your category was created"
      redirect_to categories_path
    else
      render :new
    end
  end

 def show
 end

 private

 def post_params
  params.require(:category).permit!
 end

end