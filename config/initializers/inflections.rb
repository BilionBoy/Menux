# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular "g_tipo_usuario", "g_tipos_usuarios"
end
