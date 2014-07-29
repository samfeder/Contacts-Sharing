require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/',
#   query_values: {
#     'some_category[a_key]' => 'another value',
#     'some_category[a_second_key]' => 'yet another value',
#     'some_category[inner_inner_hash][key]' => 'value',
#     'something_else' => 'aaahhhhh'
#   }
# ).to_s
#
# puts RestClient.get(url)

  # def update_user
  #   url = Addressable::URI.new(
  #     scheme: 'http',
  #     host: 'localhost',
  #     port: 3000,
  #     path: '/users/5.json'
  #   ).to_s
  #
  #   RestClient.put(
  #   url,
  #     { user: { name: "Gizmo3"} }
  #   )
  # end
  #
  # update_user


  # def delete_user
 #
 #    url = Addressable::URI.new(
 #      scheme: 'http',
 #      host: 'localhost',
 #      port: 3000,
 #      path: '/users/3.json'
 #      ).to_s
 #
 #      RestClient.delete(url)
 #
 #  end
 #
 #  delete_user

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  puts RestClient.post(
    url,
    { user: { username: "lisa"} }
  )
end

def create_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts.json'
  ).to_s

  puts RestClient.post(
    url,
    { contact: { name: "Lisa Simpson", email: "lisa@simpsons.fox", user_id: 8} }
  )
end

create_contact