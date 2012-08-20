module ContactForm
  class FormsController < ::ApplicationController
    
    def new
   	  @form = Form.new
    end

    def create
      @form = Form.new(params[:form])
      if @form.valid?
    	 FormMailer.new_contact(@form).deliver
        FormMailer.auto_reply(@form).deliver
        redirect_to after_create_contact_path, notice: I18n.t(".contact_form.controllers.forms_controller.success")
      else
    	 render "new"
      end
    end

    private

    def after_create_contact_path
      root_path
    end

  end
end