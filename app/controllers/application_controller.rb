class ApplicationController < ActionController::API
    before_action :ensure_json_request

    ## Obrigando a passar o accepted application/vnd.api+json na request, senão response em branco
    def ensure_json_request
        return if request.headers["Accept"]  =~ /vnd\.api\+json/
        render :nothing => true, :status => 406
    end
end
