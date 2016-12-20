for app in 'voice_recipe'
do
cd /home/sato/${app}
nohup /home/sato/.pyenv/shims/uwsgi --ini ${app}.ini &
done

cd /home/sato/sprint-chat
nohup redis-server &
nohup gunicorn -k flask_sockets.worker chat:app &
cd 
