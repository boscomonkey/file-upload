class FileUploadController < ApplicationController
  def upload
    @uploaded_io = params[:file]

    fname = File.join('/', 'tmp', @uploaded_io.original_filename)
    File.open(fname, 'wb')  {|fout| fout.write(@uploaded_io.read) }
  end
end
