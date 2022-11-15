class ApplicationController < ActionController::Base
    before_action :authenticate_current_member!
end
