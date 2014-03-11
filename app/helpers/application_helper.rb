module ApplicationHelper
  def app_name
    'JobsPage.io'
  end

  def title
    if @title.nil?
      app_name
    else
      app_name + ' | ' + @title
    end
  end
end
