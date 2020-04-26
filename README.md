# socatdocker
Docker file for socat container
Socat creates bidirectional socket between the two machines. Therefore it can't run when we run it as Entrypoint of a container.
We us unidirectional socat to overcome this limitation. 

Listener: 
> socat  -U - sctp-listen:11111,fork,reuseaddr

Sender: 
> socat - sctp:172.17.0.2:11111
