ActiveAdmin.register Application do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :course,
                :section,
                :student_first_name,
                :student_last_name,
                :student_email,
                :parent_name,
                :parent_email,
                :phone,
                :reference,
                :experience
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
