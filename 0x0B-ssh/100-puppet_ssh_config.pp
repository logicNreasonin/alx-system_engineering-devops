# 100-puppet_ssh_config.pp
# This Puppet manifest configures the system-wide SSH client settings.
# It ensures that PasswordAuthentication is set to 'no' and
# adds '~/.ssh/school' as an IdentityFile.

# Configure PasswordAuthentication
# This resource ensures that 'PasswordAuthentication no' is present in /etc/ssh/ssh_config.
# If a line starting with 'PasswordAuthentication ' (followed by any value) exists,
# it will be replaced by 'PasswordAuthentication no'.
# If no such line exists, 'PasswordAuthentication no' will be appended to the file.
file_line { 'Turn off passwd auth': # Resource title matches the example output
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => '^\s*PasswordAuthentication\s+.*$', # Matches any existing PasswordAuthentication line, possibly indented
  # If the matched line is already 'PasswordAuthentication no' (ignoring surrounding whitespace issues for 'match'),
  # Puppet will see no change is needed for the line content.
  # If the 'line' parameter does not have leading spaces, and it replaces an indented line found by 'match',
  # the indentation of that specific line might change. This is usually acceptable.
}

# Configure IdentityFile
# This resource ensures that 'IdentityFile ~/.ssh/school' is present in /etc/ssh/ssh_config.
# If this exact line is not found, it will be appended.
# If the line already exists, no change is made. This allows other IdentityFile directives to co-exist.
# The '~' will be expanded by the SSH client at connection time to the home directory of the user initiating the SSH connection.
file_line { 'Declare identity file': # Resource title matches the example output
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  # When 'match' is omitted, file_line checks if a line identical to the 'line' parameter exists.
  # If it doesn't exist, the 'line' is appended. If it does exist, no action is taken.
  # This makes the resource idempotent for adding this specific IdentityFile.
}