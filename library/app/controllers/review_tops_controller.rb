# coding: utf-8

class ReviewTopsController < ApplicationController
  layout 'application'
  
  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(params[:review])

    # レビュー送信後のリダイレクト先をここで指定
    # 現状は OPACP+ のユーザ側にリダイレクト
    respond_to do |format|
      if @review.save
        format.html { redirect_to opacplus_index_path, notice: 'Review was successfully created.' }
      else
        format.html { redirect_to opacplus_index_path }}
      end
    end
  end
end
