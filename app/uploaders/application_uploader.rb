# encoding: utf-8
class ApplicationUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def default_url
    ActionController::Base.helpers.asset_path("carrierwave/#{default_filename}")
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  def store_dir
    "uploads/#{model.model_name.to_s.underscore}/#{mounted_as}"
  end

  protected

  def default_filename
    @default_filename ||= [model.model_name.to_s.underscore,
                           version_name,
                           'image.jpg'].compact.join('_')
  end

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end
end
