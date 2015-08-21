ActiveAdmin.register Course do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name,
                :track_id,
                :image,
                :level,
                :short_desc,
                :long_desc,
                :end_goal_desc,
                :end_goal_image,
                :end_goal_link,
                :timeline,
                :weeks
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
