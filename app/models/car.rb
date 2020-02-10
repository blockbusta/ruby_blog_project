class Car < ApplicationRecord
    validates :title, :avatar, :presence => true
    has_attached_file :avatar, styles: { medium: "400x400>", thumb: "100x100>" }, default_url: "/images/not_av_m.png"
    validates_attachment_content_type :avatar, content_type: ["image/jpeg", "image/gif", "image/png"]
end