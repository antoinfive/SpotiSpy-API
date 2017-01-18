module Api::V1
  class AccountsController < ApplicationController
    def index
      render json: Account.all
    end
  end
end
