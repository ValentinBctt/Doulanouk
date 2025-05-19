class SoinsController < ApplicationController
  class SoinsController < ApplicationController
    def index
      @soins = Soin.all
    end

    def show
      @soin = Soin.find(params[:id])
    end
  end

end
