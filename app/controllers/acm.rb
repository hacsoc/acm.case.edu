Cabal.controller do
  get :acm, :map => '/acm' do
    render 'acm/home'
  end
end
