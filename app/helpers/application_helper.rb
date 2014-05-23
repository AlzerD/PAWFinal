# module written by Marc Clifton [Available @ http://www.codeproject.com/Articles/575551/User-Authentication-in-Ruby-on-Rails#AdministratingUsers78]
module ApplicationHelper

  def show_field_error(model, field)
    s=""

    if !model.errors[field].empty?
      s =
        <<-EOHTML
           <div id="error_message">
             #{model.errors[field][0]}
           </div>
        EOHTML
    end

    s.html_safe
  end

end
