class ApplicationController < ActionController::Base
  include SessionsHelper

  def version
    version_file_path   = "#{Rails.root}/VERSION"
    application_version = File.read(version_file_path).chomp if File.file?(version_file_path)
    assembly_version    = ENV['ASSEMBLY_VERSION'] || 'undefined'
    @version = {
      application_version: application_version,
      assembly_version:    assembly_version
    }
    respond_to do |format|
      format.json { render json: @version }
      format.html {
        render inline: "application_version: <%= @version[:application_version] %><br />
                        assembly_version: <%= @version[:assembly_version] %>"
      }
    end
  end

  private

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

end
