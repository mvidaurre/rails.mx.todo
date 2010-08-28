Dado /^que estoy registrado como usuario$/ do
  User.create!(:name => "Usuario Cucumber")
end

Cuando /^creo un nueva lista$/ do
  visit new_list_path
  fill_in(:name, :with => "Mis Pendientes de Trabajo")
  click_button("Crear")
  page.body.should =~ /La lista se creo exitosamente/m
end

Entonces /^se registra el nombre de la lista y se asocia conmigo$/ do
  @list = List.first
  @list.name.should == "Mis Pendientes de Trabajo"
  @list.user.name.should == "Usuario Cucumber"
end