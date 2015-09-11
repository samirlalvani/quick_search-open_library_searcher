Rails.application.routes.draw do

  mount QuicksearchOpenLibrarySearcher::Engine => "/quicksearch_open_library_searcher"
end
