class Cat < ActiveRecord::Base
  # belongs_to :bodega
  # has_one :bodega

  # accepts_nested_attributes_for :bodega, allow_destroy: true, reject_if: lambda {|attributes| attributes['name'].blank?}

  has_attached_file :avatar, styles: { 
    medium: "300x300>", 
    thumb: "100x100>",
    square: '200x200#' }, 
    default_url: ":style/missing.png"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

   validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
end
