class Comment < ApplicationRecord
  validates :descripcion, :titulo, presence: true
  validates :descripcion, length: { minimum: 4 }

  belongs_to :user
end
