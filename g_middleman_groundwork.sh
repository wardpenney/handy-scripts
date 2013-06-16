echo "### "
echo "### handy-scripts: Generate Middleman with Fjords and Groundwork CSS"
echo "### "
if [ -z "$1" ]
then
  echo "### ERROR site name is required"
  echo "### exiting"
  exit 0
fi

echo "### Step 1(3): Installing Middleman"
wait
exec gem install middleman

echo "### Step 2(3): Generating Middleman Site: " + $1
exec middleman init $1

echo "### Step 3(3): Installing fjords"
echo $'\r'$'\r'"gem 'middleman-fjords'" >> "./hey/Gemfile"
exec $1 + "/bundle"