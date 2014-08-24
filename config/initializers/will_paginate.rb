if defined?(WillPaginate)
  module WillPaginate
    module ActiveRecord
      module RelationMethods
        alias_method :per, :per_page
        alias_method :num_pages, :total_pages

        def first_page?
          @current_page == 1  
        end

        def last_page?
          @current_pages == num_pages
        end
      end
    end
  end
end