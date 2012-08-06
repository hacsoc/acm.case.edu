Cabal.controller do
  get :root, :map => '/' do
    render 'home/index'
  end
end
