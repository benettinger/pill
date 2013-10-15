class MedicinesController < ApplicationController
  def index
    @medicine = Medicine.all
  end

  def show
    @medicine = Medicine.find(params[:id])
  end

  def new
    @medicine = Medicine.new
  end

  def create
  @medicine = Medicine.new(params[:medicine])
  #raise
  if @medicine.save
    flash[:notice] = "Entry was saved."
    redirect_to @medicine
  else
    flash[:error] = "There was an error saving the entry. Please try again."
    render :new
  end
end

def edit
  @medicine = Medicine.find(params[:id])
end

  def update
        @medicine = Medicine.find(params[:id])
    if @medicine.update_attributes(params[:medicine])
      flash[:notice] = "Entry was updated."
      redirect_to @medicine
    else
      flash[:error] = "There was an error saving the entry. Please try again."
      render :new
  end
end
end
