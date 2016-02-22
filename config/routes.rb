Rails.application.routes.draw do
  scope 'v1' do
    get 'client_token' => 'payments#client_token'
    post 'payments' => 'payments#purchase'

    get 'society' => 'societies#show'
    post 'society' => 'societies#update'

    post 'items' => 'items#create'
    post 'items/:id' => 'items#update'
    delete 'items/:id' => 'items#destroy'

    post 'request_withdrawal' => 'societies#request_withdrawal'

    scope 'auth' do
      post 'sign_up' => 'societies#create'
      post 'login' => 'login#login'
      post 'login_with_token' => 'login#login_with_token'
    end
  end
end
