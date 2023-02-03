module Openings
    class SearchController < ApplicationController
        def search_jobs
            
            @jobs = Job.search(params[:query])
        
        end
    end
end 