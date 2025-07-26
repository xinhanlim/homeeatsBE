echo "Importing schema into MySQL container..."
docker exec -i homeeats-mysql mysql -u root -proot homeeatsdb < db/schema.sql

echo "Importing data into MySQL container..."
docker exec -i homeeats-mysql mysql -u root -proot homeeatsdb < db/data.sql

echo "Database initialized successfully!"