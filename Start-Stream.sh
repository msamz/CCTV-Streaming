#Script for checking and starting the camera display, setup to runs via cronjob everymin.

setterm -cursor off

#stream1

st1=`ps -ef | grep omxplayer | grep stream1 | cut -d'-' -f2 | cut -d' ' -f2`
echo "Checking & Starting Screen 1";
if [ "$st1" = "stream1" ];
 then
  echo "Running Stream1..";
 else
  echo "Starting Stream1..";
  screen -dmS stream1 sh -c 'omxplayer --live --refresh --video_queue 4 --fps 30 --win "0 21 640 501" rtsp://<USERNAME>:<PASSWORD>@192.168.0.140:554/Streaming/Channels/102';
fi

#stream2

st2=`ps -ef | grep omxplayer | grep stream2 | cut -d'-' -f2 | cut -d' ' -f2`
echo "Checking & Starting Screen 2";
if [ "$st2" = "stream2" ];
 then
  echo "Running Stream2..";
 else
  echo "Starting Stream2..";
  screen -dmS stream2 sh -c 'omxplayer --live --refresh --video_queue 4 --fps 30 --win "640 21 1280 501" rtsp://<USERNAME>:<PASSWORD>@192.168.0.140:554/Streaming/Channels/202';
fi;

#stream3
st3=`ps -ef | grep omxplayer | grep stream3 | cut -d'-' -f2 | cut -d' ' -f2`
echo "Checking & Starting Screen 3";
if [ "$st3" = "stream3" ];
 then
  echo "Running Stream3..";
 else
  echo "Starting Stream3..";
  screen -dmS stream3 sh -c 'omxplayer --live --refresh --video_queue 4 --fps 30 --win "0 522 640 1002" rtsp://<USERNAME>:<PASSWORD>@192.168.0.140:554/Streaming/Channels/302';
fi;

#stream4
st3=`ps -ef | grep omxplayer | grep stream4 | cut -d'-' -f2 | cut -d' ' -f2`
echo "Checking & Starting Screen 4";
if [ "$st4" = "stream4" ];
 then
  echo "Running Stream4..";
 else
  echo "Starting Stream4..";
  screen -dmS stream4 sh -c 'omxplayer --live --refresh --video_queue 4 --fps 30 --win "640 522 1280 1002" rtsp://<USERNAME>:<PASSWORD>@192.168.0.140:554/Streaming/Channels/402';
fi;
