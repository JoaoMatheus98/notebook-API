class ApplicationController < ActionController::API
    before_action :ensure_json_request

    ## Header => Accept: application/vnd.api+json . Else, blank error 406
    def ensure_json_request
        return if request.headers["Accept"]  =~ /vnd\.api\+json/
        render :nothing => true, :status => 406
    end
end
