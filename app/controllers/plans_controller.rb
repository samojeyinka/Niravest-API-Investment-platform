class PlansController < ApplicationController
    def packages
        @packages = Package.all
        render json: @packages
    end
end