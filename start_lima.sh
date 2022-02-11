 #!/bin/sh

 limactl start lima
 docker restart $(docker ps -a -q)
