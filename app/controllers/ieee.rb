Cabal.controller do
  get :ieee, :map => '/ieee' do
    render 'ieee/home'
  end
end
