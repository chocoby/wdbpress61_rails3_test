# coding: utf-8

require 'spec_helper'

describe ArticlesHelper do
  describe "#posted_on" do
    before do
      @now = Time.now
      @article = Article.create(
        title: "First Post",
        body: "Hello"
      )
    end
    it {
      helper.posted_on(@article).should ==
        "#{@now.year}/#{@now.month}/#{@now.day}"
    }
  end
end
