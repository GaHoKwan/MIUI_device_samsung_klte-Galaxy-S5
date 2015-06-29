.class public Lmiui/net/http/HttpSession;
.super Ljava/lang/Object;
.source "HttpSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/HttpSession$CountingInputStream;,
        Lmiui/net/http/HttpSession$ProgressListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lmiui/net/http/HttpSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lmiui/net/http/Cache;

.field private final mClientHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field private mRetryStrategy:Lmiui/net/http/RetryStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lmiui/net/http/HttpSession$1;

    invoke-direct {v0}, Lmiui/net/http/HttpSession$1;-><init>()V

    sput-object v0, Lmiui/net/http/HttpSession;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x2710

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 145
    .local v1, "params":Lorg/apache/http/params/BasicHttpParams;
    const-wide/16 v4, 0x2710

    invoke-static {v1, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 146
    const/16 v3, 0x14

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 148
    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 149
    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 150
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 151
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 153
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 154
    const-string v3, "miui v5"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 156
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 157
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 158
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 160
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 162
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v3, p0, Lmiui/net/http/HttpSession;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 163
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lmiui/net/http/HttpSession;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 165
    iget-object v3, p0, Lmiui/net/http/HttpSession;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v4, "http.cookie-store"

    invoke-static {}, Lmiui/net/http/PersistentCookieStore;->getInstance()Lmiui/net/http/PersistentCookieStore;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v3, p0, Lmiui/net/http/HttpSession;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lmiui/net/http/HttpSession$2;

    invoke-direct {v4, p0}, Lmiui/net/http/HttpSession$2;-><init>(Lmiui/net/http/HttpSession;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 180
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    .line 182
    invoke-static {}, Lmiui/net/http/DiskBasedCache;->getDefault()Lmiui/net/http/DiskBasedCache;

    move-result-object v3

    iput-object v3, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    .line 183
    new-instance v3, Lmiui/net/http/BaseRetryStrategy;

    invoke-direct {v3}, Lmiui/net/http/BaseRetryStrategy;-><init>()V

    iput-object v3, p0, Lmiui/net/http/HttpSession;->mRetryStrategy:Lmiui/net/http/RetryStrategy;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lmiui/net/http/HttpSession;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lmiui/net/http/HttpSession;

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    return-object v0
.end method

.method private static addCacheHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/Cache$Entry;)V
    .locals 4
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "entry"    # Lmiui/net/http/Cache$Entry;

    .prologue
    .line 617
    iget-object v0, p1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "If-None-Match"

    iget-object v1, p1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_0
    iget-wide v0, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 622
    const-string v0, "If-Modified-Since"

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_1
    return-void
.end method

.method private static addRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 4
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 605
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 606
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 7
    .param p0, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 633
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 634
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 635
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-object v4
.end method

.method private execute(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;
    .locals 22
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "entry"    # Lmiui/net/http/Cache$Entry;
    .param p3, "listener"    # Lmiui/net/http/HttpSession$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    const/16 v17, 0x0

    .line 492
    .local v17, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/net/http/HttpSession;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/net/http/HttpSession;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 494
    .local v19, "r":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 496
    .local v5, "statusCode":I
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 497
    .local v15, "entity":Lorg/apache/http/HttpEntity;
    const/16 v20, 0x130

    move/from16 v0, v20

    if-ne v5, v0, :cond_0

    if-eqz p2, :cond_0

    .line 498
    new-instance v4, Lmiui/net/http/DefaultHttpResponse;

    const/16 v5, 0xc8

    move-object/from16 v0, p2

    iget-object v6, v0, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .end local v5    # "statusCode":I
    move-object/from16 v0, p2

    iget-object v7, v0, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lmiui/net/http/Cache$Entry;->length:J

    move-object/from16 v0, p2

    iget-object v10, v0, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v11, v0, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    invoke-direct/range {v4 .. v11}, Lmiui/net/http/DefaultHttpResponse;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, "response":Lmiui/net/http/DefaultHttpResponse;
    move-object/from16 v7, v17

    .line 547
    .end local v17    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v4

    .line 500
    .end local v4    # "response":Lmiui/net/http/DefaultHttpResponse;
    .restart local v5    # "statusCode":I
    .restart local v17    # "is":Ljava/io/InputStream;
    :cond_0
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-lt v5, v0, :cond_1

    const/16 v20, 0x12b

    move/from16 v0, v20

    if-le v5, v0, :cond_2

    .line 501
    :cond_1
    :try_start_1
    new-instance v20, Ljava/io/IOException;

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .end local v5    # "statusCode":I
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    .end local v19    # "r":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v20

    move-object/from16 v7, v17

    .end local v17    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :goto_1
    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v20

    .line 503
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v5    # "statusCode":I
    .restart local v15    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v19    # "r":Lorg/apache/http/HttpResponse;
    :cond_2
    const-wide/16 v8, -0x1

    .line 504
    .local v8, "contentLength":J
    const/4 v10, 0x0

    .line 505
    .local v10, "contentType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 506
    .local v11, "contentEncoding":Ljava/lang/String;
    :try_start_2
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmiui/net/http/HttpSession;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v6

    .line 508
    .local v6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v15, :cond_8

    .line 509
    new-instance v7, Lmiui/net/http/HttpSession$CountingInputStream;

    const-string v20, "content-range"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-direct {v7, v15, v0, v1}, Lmiui/net/http/HttpSession$CountingInputStream;-><init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :try_start_3
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    .line 511
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 512
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 514
    :cond_3
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 515
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 518
    :cond_4
    if-eqz v11, :cond_9

    .line 519
    const-string v20, "gzip"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 520
    new-instance v17, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 521
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    const-wide/16 v8, -0x1

    .line 522
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v13, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v12

    .local v12, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v0, v12

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    aget-object v14, v12, v16

    .line 524
    .local v14, "element":Lorg/apache/http/HeaderElement;
    const-string v20, "gzip"

    invoke-interface {v14}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 523
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 527
    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-eqz v20, :cond_6

    .line 528
    const-string v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_6
    invoke-interface {v14}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 532
    .end local v14    # "element":Lorg/apache/http/HeaderElement;
    :cond_7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 533
    const-string v20, "content-encoding"

    move-object/from16 v0, v20

    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v12    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v13    # "builder":Ljava/lang/StringBuilder;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    :cond_8
    move-object/from16 v7, v17

    .line 538
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_9
    :try_start_5
    new-instance v4, Lmiui/net/http/DefaultHttpResponse;

    invoke-direct/range {v4 .. v11}, Lmiui/net/http/DefaultHttpResponse;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    .line 541
    .restart local v4    # "response":Lmiui/net/http/DefaultHttpResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lmiui/net/http/HttpSession;->putCacheEntry(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/DefaultHttpResponse;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 542
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 547
    .end local v4    # "response":Lmiui/net/http/DefaultHttpResponse;
    :catchall_1
    move-exception v20

    goto/16 :goto_1
.end method

.method private execute(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;
    .locals 11
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "listener"    # Lmiui/net/http/HttpSession$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 435
    invoke-direct {p0, p1}, Lmiui/net/http/HttpSession;->getCacheEntry(Lorg/apache/http/client/methods/HttpUriRequest;)Lmiui/net/http/Cache$Entry;

    move-result-object v9

    .line 436
    .local v9, "entry":Lmiui/net/http/Cache$Entry;
    if-eqz v9, :cond_1

    iget-wide v2, v9, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 437
    new-instance v0, Lmiui/net/http/DefaultHttpResponse;

    const/16 v1, 0xc8

    iget-object v2, v9, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iget-object v3, v9, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v4, v9, Lmiui/net/http/Cache$Entry;->length:J

    iget-object v6, v9, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iget-object v7, v9, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lmiui/net/http/DefaultHttpResponse;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    .line 439
    .local v0, "response":Lmiui/net/http/DefaultHttpResponse;
    if-eqz p2, :cond_0

    .line 440
    iget-wide v2, v9, Lmiui/net/http/Cache$Entry;->length:J

    iget-wide v4, v9, Lmiui/net/http/Cache$Entry;->length:J

    invoke-interface {p2, v2, v3, v4, v5}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    .line 466
    .end local v0    # "response":Lmiui/net/http/DefaultHttpResponse;
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :cond_1
    if-eqz p2, :cond_2

    .line 445
    invoke-interface {p2, v6, v7, v6, v7}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    .line 449
    :cond_2
    if-eqz v9, :cond_3

    .line 450
    invoke-static {p1, v9}, Lmiui/net/http/HttpSession;->addCacheHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/Cache$Entry;)V

    .line 453
    :cond_3
    iget-object v1, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-static {p1, v1}, Lmiui/net/http/HttpSession;->addRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 455
    const-string v1, "Accept-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 456
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_4
    iget-object v10, p0, Lmiui/net/http/HttpSession;->mRetryStrategy:Lmiui/net/http/RetryStrategy;

    .line 463
    .local v10, "retryStrategy":Lmiui/net/http/RetryStrategy;
    :cond_5
    if-eqz v10, :cond_6

    .line 464
    :try_start_0
    invoke-interface {v10}, Lmiui/net/http/RetryStrategy;->getCurrentTimeout()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/net/http/HttpSession;->setTimeout(I)V

    .line 466
    :cond_6
    invoke-direct {p0, p1, v9, p2}, Lmiui/net/http/HttpSession;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v8

    .line 468
    .local v8, "e":Ljava/io/IOException;
    if-eqz v10, :cond_7

    invoke-interface {v10, v8}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 469
    :cond_7
    throw v8

    .line 471
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 472
    .local v8, "e":Ljava/lang/NullPointerException;
    if-eqz v10, :cond_8

    invoke-interface {v10, v8}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 473
    :cond_8
    throw v8
.end method

.method private getCacheEntry(Lorg/apache/http/client/methods/HttpUriRequest;)Lmiui/net/http/Cache$Entry;
    .locals 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    const/4 v2, 0x0

    .line 584
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    .line 585
    .local v0, "cache":Lmiui/net/http/Cache;
    if-nez v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-object v2

    .line 589
    :cond_1
    const-string v3, "GET"

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Lmiui/net/http/Cache;->get(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDefault()Lmiui/net/http/HttpSession;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lmiui/net/http/HttpSession;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/HttpSession;

    return-object v0
.end method

.method private static getUrlWithQueryString(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lmiui/net/http/HttpRequestParams;

    .prologue
    .line 648
    if-eqz p1, :cond_0

    .line 649
    invoke-virtual {p1}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "param":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 651
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 658
    .end local v0    # "param":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 654
    .restart local v0    # "param":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private putCacheEntry(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/DefaultHttpResponse;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "response"    # Lmiui/net/http/DefaultHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    .line 559
    .local v0, "cache":Lmiui/net/http/Cache;
    if-nez v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    const-string v3, "GET"

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    const-string v3, "RANGE"

    invoke-interface {p1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 571
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "key":Ljava/lang/String;
    invoke-static {p2}, Lmiui/net/http/HttpHeaderParser;->parseCacheHeaders(Lmiui/net/http/HttpResponse;)Lmiui/net/http/Cache$Entry;

    move-result-object v1

    .line 573
    .local v1, "entry":Lmiui/net/http/Cache$Entry;
    if-eqz v1, :cond_0

    invoke-interface {v0, v2, v1}, Lmiui/net/http/Cache;->put(Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    iget-object v3, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v4, v1, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {p2, v3, v4, v5}, Lmiui/net/http/DefaultHttpResponse;->setContent(Ljava/io/InputStream;J)V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public clearCacheContent()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    invoke-interface {v0}, Lmiui/net/http/Cache;->clear()V

    .line 302
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lmiui/net/http/HttpRequestParams;
    .param p4, "listener"    # Lmiui/net/http/HttpSession$ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-static {p1, p3}, Lmiui/net/http/HttpSession;->getUrlWithQueryString(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v0, p2}, Lmiui/net/http/HttpSession;->addRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 424
    invoke-direct {p0, v0, p4}, Lmiui/net/http/HttpSession;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public download(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "params"    # Lmiui/net/http/HttpRequestParams;
    .param p5, "listener"    # Lmiui/net/http/HttpSession$ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lmiui/net/http/HttpSession;->getUrlWithQueryString(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 321
    .local v9, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lmiui/net/http/HttpSession;->addRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 323
    const-wide/16 v4, 0x0

    .line 324
    .local v4, "fileSize":J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 325
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 327
    :cond_0
    const-string v11, "RANGE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p5

    invoke-direct {p0, v9, v0}, Lmiui/net/http/HttpSession;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object v10

    .line 332
    .local v10, "response":Lmiui/net/http/HttpResponse;
    :try_start_0
    invoke-interface {v10}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v11

    const-string v12, "content-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 333
    .local v8, "range":Ljava/lang/String;
    if-eqz v8, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 334
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    invoke-direct {v7, p1, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    .local v7, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 337
    const/16 v11, 0x1000

    new-array v2, v11, [B

    .line 339
    .local v2, "bytes":[B
    :goto_0
    invoke-interface {v10}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "n":I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    .line 340
    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 349
    .end local v2    # "bytes":[B
    .end local v6    # "n":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "range":Ljava/lang/String;
    :catchall_0
    move-exception v11

    invoke-interface {v10}, Lmiui/net/http/HttpResponse;->release()V

    throw v11

    .line 342
    .restart local v2    # "bytes":[B
    .restart local v6    # "n":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "range":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    .end local v2    # "bytes":[B
    .end local v6    # "n":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    invoke-interface {v10}, Lmiui/net/http/HttpResponse;->release()V

    .line 351
    return-void

    .line 344
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 345
    .local v3, "fis":Ljava/io/FileOutputStream;
    invoke-interface {v10}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11, v3}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 346
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lmiui/net/http/HttpRequestParams;
    .param p4, "listener"    # Lmiui/net/http/HttpSession$ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p3}, Lmiui/net/http/HttpSession;->getUrlWithQueryString(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v0, p2}, Lmiui/net/http/HttpSession;->addRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 366
    invoke-direct {p0, v0, p4}, Lmiui/net/http/HttpSession;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lmiui/net/http/HttpRequestParams;
    .param p4, "listener"    # Lmiui/net/http/HttpSession$ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "request":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p3, :cond_0

    .line 382
    invoke-virtual {p3}, Lmiui/net/http/HttpRequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 385
    :cond_0
    invoke-static {v0, p2}, Lmiui/net/http/HttpSession;->addRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 386
    invoke-direct {p0, v0, p4}, Lmiui/net/http/HttpSession;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lmiui/net/http/HttpRequestParams;
    .param p4, "listener"    # Lmiui/net/http/HttpSession$ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "request":Lorg/apache/http/client/methods/HttpPut;
    if-eqz p3, :cond_0

    .line 403
    invoke-virtual {p3}, Lmiui/net/http/HttpRequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 406
    :cond_0
    invoke-static {v0, p2}, Lmiui/net/http/HttpSession;->addRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 407
    invoke-direct {p0, v0, p4}, Lmiui/net/http/HttpSession;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public removeCacheContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    invoke-interface {v0, p1}, Lmiui/net/http/Cache;->remove(Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 248
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {p0, p1, p2, v0}, Lmiui/net/http/HttpSession;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 249
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "scope"    # Lorg/apache/http/auth/AuthScope;

    .prologue
    .line 258
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v0, "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lmiui/net/http/HttpSession;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 260
    return-void
.end method

.method public setCache(Lmiui/net/http/Cache;)V
    .locals 1
    .param p1, "cache"    # Lmiui/net/http/Cache;

    .prologue
    .line 280
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-eq v0, p1, :cond_0

    .line 281
    iput-object p1, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    .line 283
    :cond_0
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .param p1, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .prologue
    .line 200
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public setRetryStrategy(Lmiui/net/http/RetryStrategy;)V
    .locals 0
    .param p1, "retryStrategy"    # Lmiui/net/http/RetryStrategy;

    .prologue
    .line 269
    iput-object p1, p0, Lmiui/net/http/HttpSession;->mRetryStrategy:Lmiui/net/http/RetryStrategy;

    .line 270
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .param p1, "sslSocketFactory"    # Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 231
    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 216
    iget-object v1, p0, Lmiui/net/http/HttpSession;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 217
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 218
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 219
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 220
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 209
    return-void
.end method
