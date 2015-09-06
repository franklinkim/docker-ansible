# Docker Ansible

> A Docker base container including Ansible.

## Usage

Pull container

```
$ docker pull franklinkim/ansible:ubuntu-trusty
```

Run a ansible adhoc command:

```
$ docker run franklinkim/ansbile:ubuntu-trusty ansible all -i "localhost," -c local -m shell -a 'echo hello world'
```

Run a ansible playbook:

```
$ ls -la
  roles/
    my_role/
    my_other_role/
  playbook.yml

$ docker run -v $(pwd):/opt/ansible franklinkim/ansbile:ubuntu-trusty ansible-playbook -i 'localhost,' -c local /opt/ansible/playbook.yml
```

## Testing

```
$ git clone https://github.com/franklinkim/docker-ansible
$ cd docker-ansible
$ git checkout trusty
$ vagrant up
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
Copyright (c) franklin under the MIT license.
