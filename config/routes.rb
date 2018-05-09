Rails.application.routes.draw do

  
  # 처음 들어갔을 때 생성되는 루트 페이지를 index액션으로 설정
  root to: 'articles#index'
  
  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
