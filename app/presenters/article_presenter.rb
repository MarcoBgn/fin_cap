class ArticlePresenter < BasePresenter
  def download_component
    return if download_content.blank?

    view.render('components/download', content: download_content)
  end

  def cta_links_component
    return if cta_links_content.blank?

    view.render('components/cta_links', content: cta_links_content)
  end

  def download_content
    @download_content ||= DownloadComponent.new(download_block).process
  end

  def cta_links_content
    @cta_links_content ||= CtaLinksComponent.new(cta_links_block).process
  end
end
