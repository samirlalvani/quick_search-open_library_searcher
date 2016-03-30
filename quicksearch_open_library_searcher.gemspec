$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quicksearch_open_library_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quicksearch_open_library_searcher"
  s.version     = QuickSearchOpenLibrarySearcher::VERSION
  s.authors     = ["Kevin Beswick"]
  s.email       = ["kdbeswic@ncsu.edu"]
  s.homepage    = "http://search.lib.ncsu.edu"
  s.summary     = "Open Library searcher for QuickSearch implemented as a gem engine"
  s.description = "Open Library searcher for QuickSearch implemented as a gem engine"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

end
