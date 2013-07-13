class HistoryArticlesController < ApplicationController
  before_action :set_history_article, only: [:show, :edit, :update, :destroy]

  # GET /history_articles
  # GET /history_articles.json
  def index
    @history_articles = HistoryArticle.all
  end

  # GET /history_articles/1
  # GET /history_articles/1.json
  def show
  end

  # GET /history_articles/new
  def new
    @history_article = HistoryArticle.new
  end

  # GET /history_articles/1/edit
  def edit
  end

  # POST /history_articles
  # POST /history_articles.json
  def create
    @history_article = HistoryArticle.new(history_article_params)

    respond_to do |format|
      if @history_article.save
        format.html { redirect_to @history_article, notice: 'History article was successfully created.' }
        format.json { render action: 'show', status: :created, location: @history_article }
      else
        format.html { render action: 'new' }
        format.json { render json: @history_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /history_articles/1
  # PATCH/PUT /history_articles/1.json
  def update
    respond_to do |format|
      if @history_article.update(history_article_params)
        format.html { redirect_to @history_article, notice: 'History article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @history_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_articles/1
  # DELETE /history_articles/1.json
  def destroy
    @history_article.destroy
    respond_to do |format|
      format.html { redirect_to history_articles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history_article
      @history_article = HistoryArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_article_params
      params.require(:history_article).permit(:title, :description)
    end
end
