class MarkdownsController < ApplicationController
  def show
    page = File.open(File.join(Rails.root, 'lib', 'curriculum', "#{params[:page_id]}.md"), 'r') { |f| f.read }

    # puts page

    # initialize a Markdown parser
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true)

    # render method called
    # rendering html returned from markdown.render
    render html: markdown.render(page) #(File.join(Rails.root, 'lib', 'curriculum', "#{params[:page_id]}.md"))
  end
end
