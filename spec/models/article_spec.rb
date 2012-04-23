# coding: utf-8
require 'spec_helper'

describe Article do
  context "title と body を指定した場合" do
    before do
      @article = Article.new(
        title: "初めてのブログ",
        body: "最初の記事です。"
      )
    end
    it "title がセットされていること" do
      @article.title.should == "初めてのブログ"
    end
    it "body がセットされていること" do
      @article.body.should == "最初の記事です。"
    end
  end

  context "title が設定されていない場合" do
    before do
      @article = Article.new
    end
    it { @article.should_not be_valid }
  end
end
