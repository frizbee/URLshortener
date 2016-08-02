 role :app, %w{frizbee@128.199.170.173}
 role :web, %w{frizbee@128.199.170.173}
 role :db,  %w{frizbee@128.199.170.173}


 set :stage, :production

 server '128.199.170.173', user: 'frizbee', roles: %w{web app}, my_property: :my_value

 set :ssh_options, {
   keys: %w(/Users/frizbee/.ssh/id_rsa),
    #forward_agent: true,
   auth_methods: %w(publickey)
 }
