class StaticPagesController < ApplicationController
  def home
  end
  def therapyTeam
  get therapyTeam
  end
  def readTeam
  get readTeam
  end
  def donate
    get donate
  end
end
