class ListesController < ApplicationController   
  def index   
     @listes = Liste.all   
  end   
     
  def new   
     @liste = Liste.new   
  end   
     
  def create   
     @liste = Liste.new(liste_params)   
        
     if @liste.save   
        redirect_to listes_path, notice: "Successfully uploaded."   
     else   
        render "new"   
     end   
        
  end   
     
  def destroy   
     @liste = Liste.find(params[:id])   
     @liste.destroy   
     redirect_to listes_path, notice:  "Successfully deleted."   
  end   
     
  private   
     def liste_params   
     params.require(:liste).permit(:title, :category, :price, :year, :attachment)   
  end   
     
end  