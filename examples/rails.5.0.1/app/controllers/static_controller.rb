class StaticController < ApplicationController

  def kitchen_sink
    render :kitchen_sink, layout: "kitchen"
  end
  def kitchen8_sink
    render :kitchen8_sink, layout: "kitchen8"
  end
end
