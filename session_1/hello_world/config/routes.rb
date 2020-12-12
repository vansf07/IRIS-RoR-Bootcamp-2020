Rails.application.routes.draw do
  get '/', to: 'page#root'
  get 'about_us', to: 'page#about_us'
end
