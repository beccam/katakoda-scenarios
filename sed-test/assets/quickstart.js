const cassandra = require('cassandra-driver');

// TO DO: Fill in your own host and data center
const client = new cassandra.Client({
  contactPoints: ['127.0.0.1'],
  localDataCenter: 'datacenter1',
  keyspace: 'demo'
});

function insertUser(lastname, age, city, email, firstname) {

  // TO DO: execute a prepared statement that inserts one user into the table

}

function selectUser(lastname) {

  // TO DO: execute a prepared that retrieves one user from the table

}

function updateUser(age, lastname) {

  // TO DO: execute a prepared statement that updates the age of one user

}

function deleteUser(lastname) {

  // TO DO: execute a prepared that deletes one user from the table

}

async function example() {
  await client.connect();

  // Call insertUser
  // Call selectUser
  // Call updateUser
  // Call deleteUser

  await client.shutdown();
}

example();
