killall sm_manager gg18_sign_client_multi_threads >> /dev/null
./target/debug/examples/sm_manager >> /dev/null &
./target/debug/examples/gg18_sign_client_multi_threads http://127.0.0.1:8001 $1 &
#default party number = 1
pid=$(pidof gg18_sign_client_multi_threads)
top -n 7 -p $pid -d 5 -b
killall sm_manager gg18_sign_client_multi_threads