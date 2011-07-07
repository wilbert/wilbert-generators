  def create
    @<%= instance_name %> = <%= class_name %>.new(params[:<%= instance_name %>])
    
    respond_with @<%= instance_name %> do |format|
      if @<%= instance_name %>.save
        format.html { redirect_to <%= item_url %>, :notice => t(:created, :model => t(:<%= instance_name %>, :scope => "activerecord.models").downcase) }
      else
        format.html { render :new }
      end
    end
  end
