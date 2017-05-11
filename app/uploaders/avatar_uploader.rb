class AvatarUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :display do
    process :eager => true
    process :resize_to_fill => [200, 200, :north]
  end

  # def default_url
  #  "/assets/images/" + ["lordgaben.jpg"].compact.join('_')
  # end

end
