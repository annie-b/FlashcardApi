class FilesController < ApplicationController
  def sign_key
    # @user = User.find(params[:id])
    # @file_type = filetype
    # filetype = 'image/jpeg'
    # response = Amazon.get_s3_upload_key(params[:id])
    response = Amazon.get_s3_upload_key
    render json: response, status: 200
  end
end
