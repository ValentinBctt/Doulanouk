class AccompagnementsController < ApplicationController
  class AccompagnementsController < ApplicationController
    def index
      @accompagnements = Accompagnement.all
    end
  end

end
