Cabal.controller do
  get :hacsoc, :map => '/hacsoc' do
    render 'hacsoc/home'
  end
end
