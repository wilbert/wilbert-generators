  def destroy
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    @<%= instance_name %>.destroy
    
    respond_with do |format|
      format.html { redirect_to <%= items_url %>, :notice => t(:destroyed, :model => t(:<%= instance_name %>, :scope => "activerecord.models").downcase) }
    end
  end
