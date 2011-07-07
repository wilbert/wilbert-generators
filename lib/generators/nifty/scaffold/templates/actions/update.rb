  def update
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    
    respond_with @<%= instance_name %> do |format|
      if @<%= instance_name %>.update_attributes(params[:<%= instance_name %>])
        format.html { redirect_to <%= item_url %>, :notice => t(:created, :model => t(:<%= instance_name %>, :scope => "activerecord.models").downcase) }
      else
        format.html { render :edit }
        
      end
    end
  end
