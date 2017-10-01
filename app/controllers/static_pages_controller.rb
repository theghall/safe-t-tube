class StaticPagesController < ApplicationController
  include ParentmodeSessionsHelper, ProfilesSessionsHelper, TagsHelper
  
  before_action :logged_in_user, only: [:parent]
  before_action :exit_parent_mode, except: [:parent]
  before_action :load_profiles, only: [:home, :parent]
  before_action :load_videos, only: [:home, :parent]
  
  def home
  end

  def help
  end

  def about
  end

  def contact
  end
  
  def parent
    profile = Profile.new
    
    @video = profile.videos.build
  end
  
end
