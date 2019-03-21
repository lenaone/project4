class BookmarksController < ApplicationController

  def create
    bookmark = Bookmark.new
    bookmark.user_id = session[:user_id]
    bookmark.movie_id = params[:movie_id]
    bookmark.save    
    redirect_to '/bookmarks'
  end

  def index
    @bookmarks = Bookmark.all
  end
  
  def destroy
    Bookmark.find_by(id: params[:bookmark_id]).destroy
    redirect_to '/bookmarks'  
  end

end
