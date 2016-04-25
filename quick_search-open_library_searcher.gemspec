$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quick_search_open_library_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quick_search-open_library_searcher"
  s.version     = QuickSearchOpenLibrarySearcher::VERSION
  s.authors     = ["Kevin Beswick"]
  s.email       = ["kdbeswic@ncsu.edu"]
  s.homepage    = "http://search.lib.ncsu.edu"
  s.summary     = "Open Library searcher for QuickSearch"
  s.description = "Open Library searcher gem engine plugin for QuickSearch"
  s.license = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "quick_search-core", "~> 0"

end
