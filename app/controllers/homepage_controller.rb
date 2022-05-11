class HomepageController < ActionController::Base
  def dashboards
    render ({ :template => "dashboard.html.erb" })
  end
end
