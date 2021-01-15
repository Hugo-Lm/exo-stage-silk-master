class ExerciceController < ApplicationController
  def one
  end

  def two
    @items = Company.all
  end

  def three
    @items = Company.all
  end
end
