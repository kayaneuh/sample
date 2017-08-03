class StaticPagesController < ApplicationController
  def home
    #si le user est connecté il peut créer un post
    @micropost = current_user.microposts.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
