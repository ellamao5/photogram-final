class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :username => :asc })

    @user = @list_of_users.at(0)

    render({ :template => "users/index" })
  end
end
