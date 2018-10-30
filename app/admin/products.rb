ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :image, :category_id, :description, :price
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

 index do
  selectable_column
  id_column
  column :title
  column :description
  column :category
  column :price
  column "Image" do |product|
   if product.image.present?
    image_tag product.image.url, class: 'small_size'
  end
  end
  actions
 end



 show do
  attributes_table do
   row :title
   row :description
   row :category
   row :price
   row :image  do |product|
    if product.image.present?
     image_tag product.image.url, class: 'big_size'
    end
   end
  end
 end

end
