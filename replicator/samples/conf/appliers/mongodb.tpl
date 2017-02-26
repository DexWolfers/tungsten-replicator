# MongoDB applier.  You must specify a connection string for the server.
# This currently supports only a single server.
replicator.applier.dbms=com.continuent.tungsten.replicator.applier.MongoApplier
replicator.applier.dbms.connectString=${replicator.global.db.host}:${replicator.global.db.port}
replicator.applier.dbms.connectHost=${replicator.global.db.host}
replicator.applier.dbms.connectPort=${replicator.global.db.port}
replicator.applier.dbms.connectUsername=${replicator.global.db.user}
# if password is null, connect to mongodb with no auth
replicator.applier.dbms.connectPassword=${replicator.global.db.password}
# now only support SCRAM-SHA-1
replicator.applier.dbms.connectAuth=SCRAM-SHA-1
replicator.applier.dbms.authDatabase=admin
# Auto-indexing will add indexes to MongoDB collections corresponding to keys
# in row updates.  This boosts performance considerably. 
replicator.applier.dbms.autoIndex=true
