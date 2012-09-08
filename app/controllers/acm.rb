Cabal.controller :acm do
  get :index do
    @acm_conference_url = "http://#{request.host_with_port}#{url_for(:acm, :conference)}"
    render 'acm/index'
  end

  get :conference do
    render 'acm/conference'
  end

  get :servers do
  end
end
