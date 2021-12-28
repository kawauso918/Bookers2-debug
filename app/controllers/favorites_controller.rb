class FavoritesController < ApplicationController
    def create
        @favorite = Favorite.find(params[:favorite_id])
        favorite = current_user.favorites.new(user_id: user.id)
        favorite.save
        redirect_to books_path(favorite)
    end
    
    def destroy
        @favorite = Favorite.find(params[:favorite_id])
        favorite = current_user.favorites.find_by(favorite_id: favorite.id)
        favorite.destroy
        redirect_to books_path(favorite)
    end
end
