class FileUploadController < ApplicationController
  def parameters
    h = {}.merge params
    h.keys.each {|k| h.delete(k) if k.to_s =~ /action|controller/}
    render :json => h
  end

  def upload
    @uploaded_io = params[:file]

    fname = File.join('/', 'tmp', @uploaded_io.original_filename)
    File.open(fname, 'wb')  {|fout| fout.write(@uploaded_io.read) }
  end
end
