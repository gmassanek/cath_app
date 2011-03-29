Factory.define :user do |f|
  f.email "test@test.com"
  f.password "password"
  f.password_confirmation { |u| u.password }
end

Factory.define :gallery do |f|
  f.sequence(:title) {|n| "gallery#{n}"}
  f.sequence(:description) {|n| "This is gallery#{n}"}
end

Factory.define :piece do |f|
  f.sequence(:title) {|n| "piece#{n}"}
  f.sequence(:description) {|n| "This is piece#{n}"}
  #f.gallery
  f.association :gallery, :factory => :gallery
end

Factory.define :image do |f|
  f.sequence(:title) {|n| "image#{n}"}
  f.sequence(:description) {|n| "This is image#{n}"}
  #f.gallery
  f.association :piece, :factory => :piece

end

