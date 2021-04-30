class ChartJacketUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :aws

  process convert: 'jpg'

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def filename
    "#{model.mst_music.title}_#{model.difficulty}.jpg"
  end
end
