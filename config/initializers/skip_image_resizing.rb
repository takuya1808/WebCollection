# テスト時に画像をリサイズしない
if Rails.env.test?
  CarrierWave.configure do |config|
    config.enable_processing = false
  end
end