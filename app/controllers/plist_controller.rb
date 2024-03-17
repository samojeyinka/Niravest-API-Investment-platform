class PlistController < ApplicationController

def packages
    @packages = Package.all
    render json: @packages, each_serializer: PackageSerializer
end
end