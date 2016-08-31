module SeoHelper
  def title(page_title = nil, &block)
    if block_given?
      content_for :title, capture(&block)
    else
      content_for :title, page_title.to_s
    end
  end

  def description(page_description)
    content_for :description, page_description.to_s
  end

  def keywords(page_keywords)
    content_for :keywords, page_keywords.to_s
  end

  def seo_title_tag
    if content_for(:title)
      content_tag :title, "#{content_for(:title)} | #{t('site.title')}"
    else
      content_tag :title, t('site.title')
    end
  end

  def seo_description_tag
    return unless content_for?(:description)
    content_tag :meta, nil, name: 'description', content: content_for(:description)
  end

  def seo_keywords_tag
    return unless content_for?(:keywords)
    content_tag :meta, nil, name: 'keywords', content: content_for(:keywords)
  end
end
