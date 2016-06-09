Cabal.controller :acm do

  get :cfp, :map => '/cfp' do
    redirect 'https://docs.google.com/forms/d/1cVOSDdl7lBGz_yumgkhTZhTZQ5AUrqcIknoJ-KJPOuk/viewform'
  end

  get :index, :map => '/' do
    render 'acm/index'
  end

  get :conference do
    redirect url_for('acm/conference/2016')
  end

  get 'conference/2012' do
    @name = 'Link-State'
    @speakers = Cabal.speakers_2012
    @keynote = @speakers.find{ |x| x['keynote'] }
    render 'acm/conference/2012'
  end

  get 'conference/2013' do
    @name = 'Link-State'
    @speakers = Cabal.speakers_2013
    @sponsors = Cabal.sponsors_2013
    @keynote = @speakers.find{ |x| x['keynote'] }
    render 'acm/conference/2013'
  end

  get 'conference/2014' do
    @name = 'Link-State'
    @speakers = Cabal.speakers_2014
    @sponsors = Cabal.sponsors_2014
    @keynote = @speakers.find{ |x| x['keynote'] }
    render 'acm/conference/2014'
  end

  get 'conference/2015' do
    @name = 'Link-State'
    @speakers = Cabal.speakers_2015
    @sponsors = Cabal.sponsors_2015
    # @keynote = @speakers.find{ |x| x['keynote'] }
    render 'acm/conference/2015'
  end

  get 'conference/2016' do
    @name = 'Link-State'
    @speakers = Cabal.speakers_2016
    @sponsors = Cabal.sponsors_2016
    # @keynote = @speakers.find{ |x| x['keynote'] }
    render 'acm/conference/2016'
  end

  get 'conference/about' do
    @name = 'Link-State'
    render 'acm/conference/about'
  end

  get 'conference/code' do
    @name = 'Link-State'
    render 'acm/conference/code'
  end

  get :servers do
    render 'acm/servers'
  end
end
