Rails.application.routes.draw do

  mount QuickSearchOpenLibrarySearcher::Engine => "/quick_search_open_library_searcher"
end
