u14cloall
===================

Shippable CI image for clojure on Ubuntu 14.04. Lein2 version is available in this image.
Available clojure versions:

1. 1.3.0
2. 1.4.0
3. 1.5.1
4. 1.6.0

**Services:**

1. cassandra 2.1
2. elasticsearch 1.5
3. memcached 1.4
4. mongodb 3.0
5. mysql 5.6
6. neo4j 2.2
7. postgres 9.4
8. rabbitmq 3.5
9. redis 3.0
10. selenium 2.45
11. sqllite 3
12. couchdb 1.6
13. rethinkdb 2.0
14. riak latest

## How to use
You can use this image to run clojure builds on Shippable. Just update your
`shippable.yml` file and add the `build_image` directive. Here's a sample YML file to get you going:

````````
language: clojure

lein:
  - lein2

services:
  - cassandra
  - elasticsearch
  - memcached
  - mongodb
  - mysql
  - neo4j
  - postgres
  - rabbitmq
  - redis
  - selenium
  - sqllite
  - couchdb
  - rethinkdb
  - riak

build_image: drydock/u14cloall:prod

# Running the test with Leiningen
script:
  - lein test

`````````
