sample_image = 'https://www.superadventure.co.id/uploads/news/2018/12/18/39a8c9f1a44a_crop_720_480_rel_left_top.jpg'

articles = [
    {title: 'T1', text: 'text1', likes: 20, image: sample_image},
    {title: 'T2', text: 'text2', likes:  5, image: sample_image}
]

# Article.destroy_all

articles.each do |a|
  Article.create(a)
end
