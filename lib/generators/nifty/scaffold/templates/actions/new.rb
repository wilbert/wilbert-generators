  def new
    @<%= instance_name %> = <%= class_name %>.new
    
    respond_with @<%= instance_name %>
  end
