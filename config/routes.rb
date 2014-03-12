JobsPageioSite::Application.routes.draw do
  get 'site',           :to   => 'pages#site'

  if Rails.env == 'development'
    match '/signin', to: redirect('http://127.0.0.1:3000/signin'), as: 'signin', via: :get
    match '/signup', to: redirect('http://127.0.0.1:3000/signup'), as: 'signup', via: :get
  else
    match '/signin', to: redirect('https://app.jobspage.io/signin'), as: 'signin', via: :get
    match '/signup', to: redirect('https://app.jobspage.io/signup'), as: 'signup', via: :get
  end

  root 'pages#index'
end
