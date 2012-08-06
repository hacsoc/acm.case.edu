Cabal.controller do
  get :root, :map => '/' do
    render 'home/index'
  end

  get :acm, :map => '/acm' do
    render 'home/acm'
  end

  get :hacsoc, :map => '/hacsoc' do
    render 'home/hacsoc'
  end

  get :ieee, :map => '/ieee' do
    render 'home/ieee'
  end
end
