module QuickSearch
  class OpenLibrarySearcher < QuickSearch::Searcher

    def search
      resp = @http.get(search_url)
      @response = JSON.parse(resp.body)
    end

    def results
      if results_list
        results_list

      else
        @results_list = []

        @response['search']['results'].each do |value|
          result = OpenStruct.new
          result.title = title(value)
          result.link = build_link(value)
          result.author = author(value)
          #result.date = value['id']
          @results_list << result
        end

        @results_list
      end

    end

    def search_url
      "https://api2.libanswers.com/1.0/search/" + http_request_queries['uri_escaped'] + "?iid=450&limit=3"
    end

    def loaded_link
      "http://umd.libanswers.com/search?q=" + http_request_queries['uri_escaped']
    end

    def total
      @response['search']['numFound']
    end

    def author(value)
      if value.has_key?('topics')
        value['topics'].join(', ')
      else
        ""
      end
    end

    def build_link(value)
      value['url']
    end

    def title(value)
      value['question']
    end

  end
end
