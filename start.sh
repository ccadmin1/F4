if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ccadmin1/F4 /F4
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /F4
fi
cd /F4
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
