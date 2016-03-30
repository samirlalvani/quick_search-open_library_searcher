Rails.application.routes.draw do

  mount QuickSearchOpenLibrarySearcher::Engine => "/quicksearch_open_library_searcher"
end
