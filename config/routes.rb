Rails.application.routes.draw do
  get '/uppercase', to: 'words#uppercase'
end
