Once Cassandra has  finished starting up, click on the IDE tab in the dashboard and wait for it to load.

<p>Copy the following code into the editor to create your Node.js demo application</p>

<details>
  <summary>Click to get code</summary>
<pre class="file" data-filename="quickstart.js" data-target="replace">const cassandra = require('cassandra-driver');

// TO DO: Fill in your own host and data center
const client = new cassandra.Client({
  contactPoints: ['127.0.0.1'],
  localDataCenter: 'datacenter1',
  keyspace: 'demo'
});

</pre>
</details>
