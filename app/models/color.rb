class Color < ApplicationRecord
    has_many :color_plates, inverse_of: :color
    accepts_nested_attributes_for :color_plates, allow_destroy: true, reject_if: :all_blank
end
