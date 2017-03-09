class ArticlesController < ApplicationController
	def new
	end

	def create
		article = Article.new
		article.title = params[:title]
		article.body = params[:body]
		article.author = params[:author]
		article.save
		redirect_to '/articles/new'
	end

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		article = Article.find(params[:id])
		article.title = params[:title]
		article.body = params[:body]
		article.author = params[:author]
		article.save
		redirect_to article_path(article.id)
	end

	def destroy
		article = Article.find(params[:id])
		article.destroy
  		redirect_to articles_path
	end
end
