module github.com/innoobijr/faas/gateway

go 1.21

require (
	github.com/docker/distribution v2.8.3+incompatible
	github.com/gorilla/mux v1.8.0
	github.com/innoobijr/faas-provider v0.25.2-beta.3
	github.com/innoobijr/nats-queue-worker v0.14.1-beta.2
	github.com/prometheus/client_golang v1.17.0
	github.com/prometheus/client_model v0.5.0
	go.uber.org/goleak v1.2.1
	golang.org/x/sync v0.5.0
)

//replace github.com/innoobijr/faas-provider => ../../faas-provider

require (
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/fatih/color v1.16.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/hashicorp/go-hclog v1.6.2 // indirect
	github.com/hashicorp/go-msgpack/v2 v2.1.1 // indirect
	github.com/hashicorp/raft v1.6.1 // indirect
	github.com/klauspost/compress v1.17.6 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/minio/highwayhash v1.0.2 // indirect
	github.com/nats-io/jwt/v2 v2.5.5 // indirect
	github.com/nats-io/nats.go v1.33.0 // indirect
	github.com/nats-io/nkeys v0.4.7 // indirect
	github.com/nats-io/nuid v1.0.1 // indirect
	github.com/nats-io/stan.go v0.10.4 // indirect
	github.com/prometheus/common v0.44.0 // indirect
	github.com/prometheus/procfs v0.12.0 // indirect
	github.com/stretchr/testify v1.8.4 // indirect
	go.etcd.io/bbolt v1.3.9 // indirect
	golang.org/x/crypto v0.19.0 // indirect
	golang.org/x/sys v0.17.0 // indirect
	golang.org/x/time v0.5.0 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
)

replace github.com/armon/go-metrics => github.com/hashicorp/go-metrics v0.5.3
