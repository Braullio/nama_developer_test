class HomeController < ApplicationController
  def index
    # flash['danger'] = 'activerecord.errors.messages.permitted'
    # flash['success'] = 'activerecord.errors.messages.permitted'
  end

  def new; end

  def show; end

  def create
    file_contents = File.read(params[:file].path)

    array = []
    file_contents.each_line do |line|
      array << line.gsub("\n", '').split("\t")
    end

    array
    byebug
  end
end
