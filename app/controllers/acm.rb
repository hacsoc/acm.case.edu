Cabal.controller do
  get :acm, :map => '/acm' do
    render 'acm/home'
  end

  get '/acm/conference' do
    render 'acm/conference'
  end
end
