//
// ========================================================================
// Copyright (c) 1995-2021 Mort Bay Consulting Pty Ltd and others.
//
// This program and the accompanying materials are made available under the
// terms of the Eclipse Public License v. 2.0 which is available at
// https://www.eclipse.org/legal/epl-2.0, or the Apache License, Version 2.0
// which is available at https://www.apache.org/licenses/LICENSE-2.0.
//
// SPDX-License-Identifier: EPL-2.0 OR Apache-2.0
// ========================================================================
//

package org.eclipse.jetty.session.infinispan;

import org.eclipse.jetty.server.session.SessionData;
import org.infinispan.Cache;
import org.infinispan.commons.api.BasicCache;

public class EmbeddedQueryManagerFactory implements QueryManagerFactory
{

    @Override
    public QueryManager getQueryManager(BasicCache<String, InfinispanSessionData> cache)
    {
        if (!(cache instanceof Cache))
            throw new IllegalArgumentException("Argument was not of type Cache");

        return new EmbeddedQueryManager((Cache<String, InfinispanSessionData>)cache);
    }
}
