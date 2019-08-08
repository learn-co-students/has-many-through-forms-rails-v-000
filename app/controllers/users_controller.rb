class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        redirect_to user
    end

    private

  def user_params
    params.require(:user).permit(:username, :content, category_ids:[], categories_attributes: [:name])
  end
end
