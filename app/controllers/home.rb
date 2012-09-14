Cabal.controller :home do
  get :index, :map => '/eecs' do
    render 'home/index'
  end
end
