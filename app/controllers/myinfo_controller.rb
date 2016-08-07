class MyinfoController < ApplicationController
  def showinfo
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
  end
end
