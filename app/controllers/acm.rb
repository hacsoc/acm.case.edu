Cabal.controller :acm do
  get :index do
    render 'acm/index'
  end

  get :conference do
    render 'acm/conference'
  end
end
