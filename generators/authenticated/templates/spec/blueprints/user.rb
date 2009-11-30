<%= class_name %>.blueprint do
  login { Faker::Internet.user_name }
  password 'testing'
  password_confirmation { password }
  email { Faker::Internet.email }
  <% if options[:stateful] %>
    state { 'active' }
  <% end %>
end