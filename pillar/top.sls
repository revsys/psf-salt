base:

  '*':
    - networking
    - users
    - sudoers

  'roles:cdn-logs':
    - match: grain
    - fastly-logging
    - firewall.fastly-logging

  'roles:docs':
    - match: grain
    - firewall.fastly-backend
    - groups.docs
    - secrets.backup.docs

  'roles:downloads':
    - match: grain
    - firewall.fastly-backend
    - groups.downloads
    - secrets.backup.downloads

  'roles:salt-master':
    - match: grain
    - salt-master

  'roles:jython-web':
    - match: grain
    - secrets.backup.jython-web
    - groups.jython
    - firewall.http

  'roles:backup-server':
    - match: grain
    - backup.server
