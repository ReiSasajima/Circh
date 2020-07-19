class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
    validates :content, {presence: true, length: {maximum: 140}}
    validates :groupname, {presence: true, length: {maximum: 140}}
    
    def self.search(search) #self.でクラスメソッドとしている
      if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
        Post.where(['groupname LIKE? OR content LIKE ?', "%#{search}%", "%#{search}%"])
      else
        Post.all #全て表示。
      end
    end
end

