# encoding: utf-8
# frozen_string_literal: true

class MockupImageUploader < ApplicationUploader
  process resize_to_limit: [1240, 440]
end
