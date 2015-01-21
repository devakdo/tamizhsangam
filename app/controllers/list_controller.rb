class ListController < ApplicationController
  

before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json


  def list
    @groups = Group.search(params[:search])
    @groups = Group.paginate(:page => params[:page], :per_page => 5)
  end
  end
