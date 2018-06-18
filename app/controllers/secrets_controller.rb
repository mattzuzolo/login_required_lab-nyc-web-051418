class SecretsController < ApplicationController

    before_action :require_login

    private

    def require_login
      redirect_to '/sessions/new' if session.exclude? :name
    end

end
