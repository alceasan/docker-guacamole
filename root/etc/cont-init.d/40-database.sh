
#!/usr/bin/with-contenv sh

if [ "$(grep postgresql-hostname /config/guacamole/guacamole.properties | wc -l)" -eq 0 ]; then
  echo "postgresql-hostname: $POSTGRES_HOST" >> /config/guacamole/guacamole.properties
fi

if [ "$(grep postgresql-port /config/guacamole/guacamole.properties | wc -l)" -eq 0 ]; then
  echo "postgresql-port: $POSTGRES_PORT" >> /config/guacamole/guacamole.properties
fi

if [ "$(grep postgresql-database /config/guacamole/guacamole.properties | wc -l)" -eq 0 ]; then
  echo "postgresql-database: $POSTGRES_DATABASE" >> /config/guacamole/guacamole.properties
fi

if [ "$(grep postgresql-username /config/guacamole/guacamole.properties | wc -l)" -eq 0 ]; then
  echo "postgresql-username: $POSTGRES_USER" >> /config/guacamole/guacamole.properties
fi

if [ "$(grep postgresql-password /config/guacamole/guacamole.properties | wc -l)" -eq 0 ]; then
  echo "postgresql-password: $POSTGRES_PASS" >> /config/guacamole/guacamole.properties
fi
