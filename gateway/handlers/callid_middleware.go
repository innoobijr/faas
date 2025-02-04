// Copyright (c) OpenFaaS Author(s). All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

package handlers

import (
	"fmt"
	"net/http"
	"time"

	"github.com/docker/distribution/uuid"
	"github.com/innoobijr/faas/gateway/version"
)

// MakeCallIDMiddleware middleware tags a request with a uid
func MakeCallIDMiddleware(next http.HandlerFunc) http.HandlerFunc {

	version := version.Version

	return func(w http.ResponseWriter, r *http.Request) {
		start := time.Now()
		if len(r.Header.Get("X-Call-Id")) == 0 {
			callID := uuid.Generate().String()
			r.Header.Add("X-Call-Id", callID)
			w.Header().Add("X-Call-Id", callID)
		}

		r.Header.Add("X-Start-Time", fmt.Sprintf("%d", start.UTC().UnixNano()))
		w.Header().Add("X-Start-Time", fmt.Sprintf("%d", start.UTC().UnixNano()))

		w.Header().Add("X-Served-By", fmt.Sprintf("openfaas-community/%s", version))

		next(w, r)
	}
}
