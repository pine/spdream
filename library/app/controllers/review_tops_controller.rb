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
        format.json { render json: @review, status: :created }
      else
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # レビューが参考になったか、参考にならなかったか
  # POST /value.json?review_id=&value=0_or_1
  def value
    review = Review.find(params[:review_id])
    value  = Integer(params[:value])
    
    if 0 <= value and value < 2
      review.value_good += 1 if value == 0
      review.value_bad  += 1 if value == 1
      
      if review.save
        respond_to do |format|
          format.json do
            render :json => { succeed: true }
            return
          end
        end
      end
    end
    
    render :json => { succeed: false }
  end
end
