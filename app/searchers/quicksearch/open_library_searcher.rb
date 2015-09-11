module Quicksearch
  class OpenLibrarySearcher < Quicksearch::Searcher

    def search
      resp = @http.get(base_url, parameters)
      @response = JSON.parse(resp.body)
    end

    def results
      if results_list
        results_list

      else
        @results_list = []

        @response['docs'].first(@per_page).each do |value|
          result = OpenStruct.new
          result.title = title(value)
          result.link = build_link(value)
          result.author = value['author_name'].join(', ')
          result.date = value['first_publish_year']
          result.fulltext = value['has_fulltext']
          result.thumbnail = cover_image(value)
          @results_list << result
        end

        @results_list
      end

    end

    def base_url
      "http://openlibrary.org/search.json"
    end

    def parameters
      {
        'q' => http_request_queries['not_escaped'],
      }
    end

    def total
      @response['numFound']
    end

    def loaded_link
      "http://www.openlibrary.org/search?q=" + http_request_queries['uri_escaped']
    end

    def build_link(value)
      "http://www.openlibrary.org" + value['key']
    end

    def title(value)
      if value.has_key?('subtitle')
        value['title'] + ': ' + value['subtitle']
      else
        value['title']
      end
    end

    def cover_image(value)
      if value.has_key?('cover_i')
        "https://covers.openlibrary.org/w/id/" + value['cover_i'].to_s + "-M.jpg"
      else
        ""
      end
    end

  end
end
