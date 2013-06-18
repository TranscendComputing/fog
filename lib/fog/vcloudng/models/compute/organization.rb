require 'fog/core/model'

module Fog
  module Compute
    class Vcloudng

      class Organization < Fog::Model
        
        identity  :id
                  
        attribute :name
        attribute :type
        attribute :href
        attribute :description, :aliases => 'Description'
        attribute :links, :aliases => 'Links'
        
        def vdc
          
        end
        
        def catalogs
          requires :id

          service.catalogs(:organization => self)
        end
        
      end
    end
  end
end