module UI
  module Pages
    class Pagination < SitePrism::Section
      element :page_info, '.t-pagination__counter'
      element :previous_button, '.t-button--previous'
      element :next_button, '.t-button--next'
    end

    class SearchResults < UI::Page
      set_url '{/locale}/search'

      element :robots_tag, :xpath, "//meta[@name='robots']", visible: false
      element :spelling_suggestion, '.t-spelling-suggestion'
      element :corrected_query, '.t-corrected-query'
      elements :results, '.search-results__item'
      section :pagination, Pagination, '.pagination'
      section :bottom_search_box, SearchBox, '.footer__search'
    end
  end
end
