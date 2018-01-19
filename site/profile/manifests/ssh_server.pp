class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD6gg9LZeSoWBInh2U6W1N4ZOPsUQ4vvZIR1TWZW+ze67vowYlK/z1z4cTTAJHqHRzy46mG7tBypufIYB8cPey/HwR3u/BvgCnXBefidE7EQLenWNGy5I9gxFulwnO04YGHxyeDwFlAL7NwanDUxaDqNg+hBIZBCiWiI0GNtGnXAaqOy/EEu7QAUbONsu5Jp8IXAtRUnlEevr3jxjBt4pRQaDMwdI/t/5QGtlrS7xvAKhSUFain9Ut/zZ4MJn+hyIF74QufTd6pV/xqpW8E8yqwNrQ9iyMhcGIYtUyIiw8MR7ubiF+EzrDYBS23Jx/ZVQgCHCajslsGD+TqJigGOqLL',
	}
}
