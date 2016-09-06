# encoding: utf-8
class MockupImageUploader < ApplicationUploader
  process resize_to_limit: [1240, 440]
end
