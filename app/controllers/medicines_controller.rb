class MedicinesController < ApplicationController
  def index
    @medicines = Medicine.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
