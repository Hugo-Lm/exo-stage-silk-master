class ExerciceController < ApplicationController
  def one
    @companies = Company.all
  end

  def two
    @items = Company.all
  end

  def three
    @items = Company.all
    @companies_with_s_founder = Company.company_with_s_founder(@items)
  end
end
