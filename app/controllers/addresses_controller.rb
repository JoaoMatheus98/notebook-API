class AddressesController < ApplicationController
    before_action :set_contact

    def show
      render json: @contact.address
    end

    def update
      @contact.address.update(address_params)
    end

    private
    
    def set_contact
      @contact = Contact.find(params[:contact_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def 
    
end
