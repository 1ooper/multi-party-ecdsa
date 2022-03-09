killall sm_manager gg18_keygen_client_queue
./target/debug/examples/sm_manager >> /dev/null &
./target/debug/examples/gg18_keygen_client_queue http://127.0.0.1:8001 $1  >> /dev/null &
pid=$(pidof gg18_keygen_client_queue)
top -n 7 -p $pid -d 5 -b
killall sm_manager gg18_keygen_client_queue