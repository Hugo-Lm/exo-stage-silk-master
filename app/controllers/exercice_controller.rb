class ExerciceController < ApplicationController
  def one
    @companies = Company.all
  end

  def two
    @items = Company.all
  end

  def three
    @items = Company.all
  end
end
