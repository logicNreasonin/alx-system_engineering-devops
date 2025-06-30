# This Puppet manifest configures the client's SSH file.

# Ensure that PasswordAuthentication is set to 'no'.
# If a line for PasswordAuthentication exists (e.g., 'PasswordAuthentication yes'),
# it will be replaced. If it does not exist, it will be added.
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match => '^    #?PasswordAuthentication',
}

# Ensure that the IdentityFile ~/.ssh/school is present.
# This adds the line to the ssh_config file if it is not already there,
# ensuring the client attempts to use this private key.
file_line { 'Declare identity file':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
}