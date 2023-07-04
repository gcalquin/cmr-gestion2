class WelcomeController < ApplicationController
  def index

    

    @vendedors = Vendedor.all 

    @pagy, @vendedors = pagy(Vendedor.all, items: 10)
  
    if params[:texto_a_buscar].present?
       @vendedors = @vendedors.search_full_text(params[:texto_a_buscar])
    end
    
    if params[:manager_a_buscar].present?
      # @vendedors = manager_a_buscar sea igual a manager_id
      @vendedors = @vendedors.where(manager_id: params[:manager_a_buscar])
   end


  end
end
