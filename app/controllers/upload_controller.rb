class UploadController < ApplicationController
  def index
  end

  def upload
    r=Rond.new
    r.save
    file_path1 = params[:files][:file1].tempfile.to_path.to_s
    file_path2 = params[:files][:file2].tempfile.to_path.to_s
    r.load_tips(file_path1)
    r.load_points(file_path2)
    r.save
  end
end
