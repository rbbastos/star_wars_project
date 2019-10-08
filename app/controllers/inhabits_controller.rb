# frozen_string_literal: true

class InhabitsController < ApplicationController
  def index
    @inhabit = Inhabit.order(:name)
  end
end
