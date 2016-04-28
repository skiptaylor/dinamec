get '/survey/questionnaires/?' do
	@questionnaire = Questionnaire.all
	erb :'/survey/questionnaires'
end

get '/survey/new_questionnaire/?' do
  @questionnaire = Questionnaire.new
  erb :'/survey/edit_questionnaire'
end

post '/survey/new_questionnaire/?' do
  @questionnaire = Questionnaire.create(
    :company          => params[:company],
    :contact          => params[:contact],
    :department       => params[:department],
    :address1         => params[:address1],
    :address2         => params[:address2],
    :city             => params[:city],
    :state            => params[:state],
    :zip              => params[:zip],
    :phone1           => params[:phone1],
    :phone2           => params[:phone2],
    :email            => params[:email],
    :instructions     => params[:instructions],
    :temperature      => params[:temperature],
    :day              => params[:day],
    :week             => params[:week],
    :process          => params[:process],
    :issues           => params[:issues],
    :pressure         => params[:pressure],
    :psi              => params[:psi],
    :voltage_v        => params[:voltage_v],
    :voltage_hz       => params[:voltage_hz],
    :casting_name     => params[:casting_name],
    :alloy            => params[:alloy],
    :qty_day          => params[:qty_day],
    :dem_length       => params[:dem_length],
    :dem_width        => params[:dem_width],
    :dem_height       => params[:dem_height],
    :casting_weight   => params[:casting_weight],
    :core_weight      => params[:core_weight],
    :sand             => params[:sand],
    :dem_measure      => params[:dem_measure],
    :casting_measure  => params[:casting_measure],
    :core_measure     => params[:core_measure]   
  ) 
    
  redirect "/survey/questionnaire_thanks"
end

get '/survey/questionnaire_thanks/?' do
  
  erb :'/survey/questionnaire_thanks'
end

get '/survey/:id/questionnaire/?' do
  auth_admin
  @questionnaire = Questionnaire.get(params[:id])
  erb :'/survey/questionnaire'
end

post '/survey/:id/questionnaire/?' do
  auth_admin
  questionnaire = Questionnaire.get(params[:id])
  questionnaire.update(
    :msds          => params[:msds]
  )
  erb :'/survey/questionnaires'
end

get '/survey/edit_questionnaire/?' do
  auth_admin
  @questionnaire = Questionnaire.get(params[:id])
  erb :'/survey/edit_questionnaire'
end

post '/survey/edit_questionnaire/?' do
  auth_admin
  questionnaire = Questionnaire.get(params[:id])
  questionnaire.update(
    :company          => params[:company],
    :contact          => params[:contact],
    :department       => params[:department],
    :address1         => params[:address1],
    :address2         => params[:address2],
    :city             => params[:city],
    :state            => params[:state],
    :zip              => params[:zip],
    :phone1           => params[:phone1],
    :phone2           => params[:phone2],
    :email            => params[:email],
    :instructions     => params[:instructions],
    :temperature      => params[:temperature],
    :day              => params[:day],
    :week             => params[:week],
    :process          => params[:process],
    :issues           => params[:issues],
    :pressure         => params[:pressure],
    :psi              => params[:psi],
    :voltage_v        => params[:voltage_v],
    :voltage_hz       => params[:voltage_hz],
    :casting_name     => params[:casting_name],
    :alloy            => params[:alloy],
    :qty_day          => params[:qty_day],
    :dem_length       => params[:dem_length],
    :dem_width        => params[:dem_width],
    :dem_height       => params[:dem_height],
    :casting_weight   => params[:casting_weight],
    :core_weight      => params[:core_weight],
    :sand             => params[:sand],
    :dem_measure      => params[:dem_measure],
    :casting_measure  => params[:casting_measure],
    :core_measure     => params[:core_measure]   
) 
  
  redirect '/index'
end

get '/survey/:id/delete/?' do
  auth_admin
  questionnaire = Questionnaire.get(params[:id])
  questionnaire.destroy
  
  redirect '/survey/questionnaires'
end
