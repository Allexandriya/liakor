class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def contacts
  end

  def conwisol
  	@products = Product.all.where('category' => [1])
  end

  def liakorConstruction
  	@products = Product.all.where('category' => [2])
  end

  def liakorColloid
  	@products = Product.all.where('category' => [3])
  end

  def liakorHousehold
  	@products = Product.all.where('category' => [4])
  end
end
