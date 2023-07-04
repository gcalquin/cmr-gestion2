class WelcomeController < ApplicationController
  def index

    

    @vendedors = Vendedor.all 

    @pagy, @vendedors = pagy(Vendedor.all, items: 10)


    @office_id = params[:office_id]
    @manager_id = params[:manager_id]


    if @office_id.present? && @office_id.to_i>0
      # @vendedors = @vendedors.search_full_text(@office_id)
      @vendedors = @vendedors.where(office_id: @office_id)
    end
    if @manager_id.present? && @manager_id.to_i>0
      # @vendedors = @vendedors.search_full_text(@manager_id)
      @vendedors = @vendedors.where(manager_id: @manager_id)
    end




  
    if params[:texto_a_buscar].present?
       @vendedors = @vendedors.search_full_text(params[:texto_a_buscar])
    end
    
    if params[:manager_a_buscar].present?
      # @vendedors = manager_a_buscar sea igual a manager_id
      @vendedors = @vendedors.where(manager_id: params[:manager_a_buscar])
   end


   @managers = Manager.all
   @offices = Office.all

  end


end
