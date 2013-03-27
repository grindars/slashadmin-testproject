Testproject::Application.routes.draw do
  devise_for :users
  mount SlashAdmin::Engine => "/admin"
end
