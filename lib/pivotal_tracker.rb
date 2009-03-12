require "activeresource"


module Pivotal
  
  class << self
  
    def resources
      @resources ||= []
    end

    def token=(token)
      @token = token
      add_token_to_resources
    end

    protected

    def add_token_to_resources
      resources.each do |resource|
        resource.headers['X-TrackerToken'] = @token
      end
    end
  
  end # class << self
  
  class Base < ActiveResource::Base
    
    def self.inherited(child)
      Pivotal.resources << child
      super
    end
    
  end
  
  class Project < Base
    self.site = "http://www.pivotaltracker.com/services/v2/"
    
    def stories(options = {})
      Story.find(:all, :params => options.update(:project_id => id))
    end
  end
  
  class Story < Base
    self.site = "http://www.pivotaltracker.com/services/v2/projects/:project_id"
  end
  
end