if defined?(WillPaginate)
  module WillPaginate
    module ActiveRecord
      module RelationMethods
        def per_page(num)
          if (n = num.to_i) <= 0
            self
          else
            limit(n).offset(offset_value / limit_value * n)
          end
        end

        def total_pages
          (total_count.to_f / limit_value).ceil
        end

        alias_method :per, :per_page
        alias_method :num_pages, :total_pages
        alias_method :total_count, :total_entries

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