curl -uusername:password -XPOST 'https://artifactory.com/artifactory/api/security/token' -d 'username=username' -d 'scope=member-of-groups:groupname1, groupname2' \
-d 'expires_in=0' -d 'refreshable=true'