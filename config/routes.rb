Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/", { :controller => "homepage", :action => "dashboards" })
  get("/forex", { :controller => "currency", :action => "first_currency" })
  get("/forex/:first_currency", { :controller => "currency", :action => "second_currency" })
  get("/forex/:first_currency/:second_currency", { :controller => "currency", :action => "convert" })

end
