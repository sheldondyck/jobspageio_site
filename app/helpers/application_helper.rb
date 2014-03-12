module ApplicationHelper
  def app_name
    'JobsPage.io'
  end

  def www_url
    if Rails.env == 'development' or Rails.env == 'test'
      'http://127.0.0.1:4000'
    else
      'http://www.jobspage.io'
    end
  end

  def app_url
    if Rails.env == 'development' or Rails.env == 'test'
      'http://127.0.0.1:3000'
    else
      'http://app.jobspage.io'
    end
  end

  def icon_tag icon_name
    raw "<i class='fa fa-#{icon_name} fa-lg pull-left'></i>"
  end

  def title
    if @title.nil?
      app_name
    else
      app_name + ' | ' + @title
    end
  end

  def active(cntrl_name)
    if cntrl_name == controller.controller_name + '#' + controller.action_name then
      return 'active'
    end
  end
end
