Cabal.controller :acm do
  
  get :index, :map => '/' do
    @name = 'Link-State'
    render 'acm/index'
  end

  get :conference do
    redirect url_for('acm/conference/2014')
  end

  get 'conference/2012' do
    @name = 'Link-State'
    @speakers = Cabal.speakers_2012
    @keynote = @speakers.select{ |x| x['keynote'] }.first
    render 'acm/conference/2012'
  end

  get 'conference/2013' do
    @name = 'Link-State'
    @speakers = Cabal.speakers_2013
    @sponsors = Cabal.sponsors_2013
    @keynote = @speakers.select{ |x| x['keynote'] }.first
    render 'acm/conference/2013'
  end

  get 'conference/2014' do
    @name = 'Link-State'
    @speakers = Cabal.speakers_2014
    @sponsors = Cabal.sponsors_2014
    @keynote = @speakers.select{ |x| x['keynote'] }.first
    render 'acm/conference/2014'
  end

  get 'conference/about' do
    @name = 'Link-State'
    render 'acm/conference/about'
  end

  get :servers do
    render 'acm/servers'
  end
end
