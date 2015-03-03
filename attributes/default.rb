default['myapp']['name'] = 'myapp'

default['myapp']['packages'] = {
  'installed' => {
    'vim'  => nil,
    'tmux' => nil,
    'htop' => nil,
    'tree' => nil
  },
  'uninstalled' => {

  }
}

default['myapp']['users'] = {
  'myapp' => {
    'password_shadow' => '$1$Xbo.de4k$.pq.M460eYttT9NhGLM200', # test1234
    'home' => '/home/myapp'
  }
}
