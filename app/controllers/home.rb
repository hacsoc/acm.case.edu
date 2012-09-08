Cabal.controller :home do
  get :index, :map => '/' do
    render 'home/index'
  end
end
