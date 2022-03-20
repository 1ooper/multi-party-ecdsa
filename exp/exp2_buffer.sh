killall sm_manager gg18_sign_client_buffer >> /dev/null
./target/debug/examples/sm_manager >> /dev/null &
ROCKET_PORT=8002 ./target/debug/examples/gg18_sign_client_buffer  http://127.0.0.1:8001 $1 &
#default party number = 1
pid=$(pidof gg18_sign_client_buffer)
top -n 7 -p $pid -d 5 -b
killall sm_manager gg18_sign_client_buffer