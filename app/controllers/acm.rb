Cabal.controller :acm do
  
  get :index, :map => '/' do
    @acm_conference_url = "http://#{request.host_with_port}#{url_for(:acm, :conference)}"
    @name = 'Link-State Signup'
    render 'acm/index'
  end

  get :conference do
    @name = 'Link-State'
    @speakers = Cabal.speakers
    @keynote = @speakers.select{ |x| x['keynote'] }.first
    render 'acm/conference'
  end

  get :servers do
    render 'acm/servers'
  end

  get :conference_signup do
    render 'acm/conference_signup'
  end
end
