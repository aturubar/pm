name             'gre'
maintainer       'me'
maintainer_email 'aturubar@gmail.com'
license          'illegal'
description      'TEST: install and configure gre master or slave, based on recipe'
version          '0.0.1'


recipe 'gre::master', 'For master installtion. IP obtained from host, it should be provisioned'
recipe 'gre::slave', 'For slave installation. IP obtained from host, should be provisioned'


