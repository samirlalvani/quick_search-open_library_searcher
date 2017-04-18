# QuickSearch Open Library Searcher

## Description

A QuickSearch searcher for Open Library (https://openlibrary.org/)

## Installation

Include the searcher gem in your Gemfile:

    gem 'quick_search-open_library_searcher'

Include as a searcher in your config/quick_search_config.yml:

    searchers = [open_library, ..., some_searcher]

Run bundle install:

    bundle install

Include in your Search Results page

     <%= render_module @open_library, 'open_library' %>

For more general information about setting up searcher plugins in QuickSearch, see https://github.com/NCSU-Libraries/quick_search
