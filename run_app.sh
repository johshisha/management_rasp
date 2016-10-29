for app in 'voice_recipe'
do
cd /home/sato/${app}
nohup /home/sato/.pyenv/shims/uwsgi --ini ${app}.ini &
done
