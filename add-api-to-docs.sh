mvn dans-build-resources:get-helper-script

echo -n "Removing existing files if present..."
if [ -d "docs/swagger-ui" ]; then rm -fr docs/swagger-ui; fi
if [ -f "docs/api.yml" ]; then rm docs/api.yml; fi
echo "OK"

sh target/add-swagger-ui.sh
cp target/classes/*.yml docs/api.yml
