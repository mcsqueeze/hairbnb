class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @wigs = policy_scope(Wig)
  end
end
