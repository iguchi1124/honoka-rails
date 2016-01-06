Rails.application.routes.draw do

  mount HonokaRails::Engine => "/honoka_rails"
  root to: 'pages#index'
end
