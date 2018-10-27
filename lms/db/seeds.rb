#Creating App
android = Lms::App.where(title: 'Android').first_or_create do |a|
  a.auth_token =  SecureRandom.base64(15).tr('+/=lIO0', 'pqrsxyz')
end
p "Application: #{android.auth_token}"

#Item
inception           = Lms::Item.where(title: 'Inception').first_or_create           
blood_diamond       = Lms::Item.where(title: 'Blood Diamond').first_or_create       
catch_me_if_you_can = Lms::Item.where(title: 'Catch Me If You Can').first_or_create 
departed            = Lms::Item.where(title: 'Departed').first_or_create            
shutter_island      = Lms::Item.where(title: 'Shutter Island').first_or_create      

android.items = [inception, blood_diamond, catch_me_if_you_can, departed, shutter_island]

#List
tabs              = Lms::List.where(title: 'tab').first_or_create               
all               = Lms::List.where(title: 'All').first_or_create               
hollywood_movies  = Lms::List.where(title: 'HollyWood Movies').first_or_create  
series            = Lms::List.where(title: 'Series').first_or_create            
entertainment     = Lms::List.where(title: 'Entertainment').first_or_create     
featured          = Lms::List.where(title: 'Feature').first_or_create           
popular           = Lms::List.where(title: 'Popular').first_or_create           
classic           = Lms::List.where(title: 'Classic').first_or_create           



tabs.sublists = [ all, hollywood_movies, series, entertainment]
all.sublists  = [ featured, popular, classic]

#Layout
carousal_one_layouts      = Lms::Layout.where(title: 'carousal-one-layouts').first_or_create     
carousal_two_layouts      = Lms::Layout.where(title: 'carousal-two-layouts').first_or_create     
carousal_three_layouts    = Lms::Layout.where(title: 'carousal-three-layouts').first_or_create 
carousal_four_layouts     = Lms::Layout.where(title: 'carousal-four-layouts').first_or_create   
carousal_five_layouts     = Lms::Layout.where(title: 'carousal-five-layouts').first_or_create   
gallery_one               = Lms::Layout.where(title: 'gallery-one').first_or_create                       
gallery_two               = Lms::Layout.where(title: 'gallery-two').first_or_create                       
newsfeeds_layouts         = Lms::Layout.where(title: 'newsfeeds-layouts').first_or_create           
newsfeeds_two_layouts     = Lms::Layout.where(title: 'newsfeeds-two-layouts').first_or_create   
project_one_layouts       = Lms::Layout.where(title: 'project-one-layouts').first_or_create       
project_two_layouts       = Lms::Layout.where(title: 'project-two-layouts').first_or_create       
project_three_layouts     = Lms::Layout.where(title: 'project-three-layouts').first_or_create   
project_four_layouts      = Lms::Layout.where(title: 'project-four-layouts').first_or_create     
vertical_cards_layouts    = Lms::Layout.where(title: 'vertical-cards-layouts').first_or_create 
zig_zag_layout            = Lms::Layout.where(title: 'zig-zag-layout').first_or_create                 

featured.layouts << carousal_one_layouts
popular.layouts << vertical_cards_layouts
classic.layouts << gallery_one

inception_media = Lms::Medium.where(title: 'inception').first_or_create do |m|
  m.url = 'https://images-na.ssl-images-amazon.com/images/I/51ShRC1YMrL.jpg'
  m.media_type = 'image'
end
inception.media << inception_media

blood_diamond_media = Lms::Medium.where(title: 'inception').first_or_create do |m|
  m.url = 'https://images-na.ssl-images-amazon.com/images/I/61pc2d4G8uL._SY445_.jpg'
  m.media_type = 'image'
end
blood_diamond.media << blood_diamond_media

catch_me_if_you_can_media = Lms::Medium.where(title: 'inception').first_or_create do |m|
  m.url = 'https://images-na.ssl-images-amazon.com/images/I/81V%2Bb69u3xL._SY445_.jpg'
  m.media_type = 'image'
end
catch_me_if_you_can.media << catch_me_if_you_can_media

departed_media = Lms::Medium.where(title: 'inception').first_or_create do |m|
  m.url = 'https://images-na.ssl-images-amazon.com/images/I/51J5V86vqiL._SY445_.jpg'
  m.media_type = 'image'
end
departed.media << departed_media

shutter_island_media = Lms::Medium.where(title: 'inception').first_or_create do |m|
  m.url = 'https://upload.wikimedia.org/wikipedia/en/7/76/Shutterislandposter.jpg'
  m.media_type = 'image'
end
shutter_island.media << shutter_island_media


featured.items = [inception, departed, catch_me_if_you_can]
popular.items  = [blood_diamond, shutter_island, inception]
classic.items  = [catch_me_if_you_can, departed, shutter_island]
