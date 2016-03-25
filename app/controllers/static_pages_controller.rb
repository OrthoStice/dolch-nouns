class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @quizzes= current_user.quizzes.build
      @user= current_user
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
