.class Lmiui/net/http/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lmiui/net/http/HttpResponse;)Lmiui/net/http/Cache$Entry;
    .locals 24
    .param p0, "response"    # Lmiui/net/http/HttpResponse;

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 25
    .local v12, "now":J
    const-wide/16 v14, 0x0

    .line 26
    .local v14, "serverDate":J
    const-wide/16 v16, 0x0

    .line 27
    .local v16, "serverExpires":J
    const-wide/16 v10, 0x0

    .line 28
    .local v10, "maxAge":J
    const/4 v4, 0x0

    .line 29
    .local v4, "hasCacheControl":Z
    const/4 v9, 0x0

    .line 31
    .local v9, "serverEtag":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v6

    .line 32
    .local v6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v22, "date"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 33
    .local v5, "header":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 34
    invoke-static {v5}, Lmiui/net/http/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v14

    .line 37
    :cond_0
    const-string v22, "cache-control"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "header":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 38
    .restart local v5    # "header":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 39
    const/4 v4, 0x1

    .line 40
    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 41
    .local v21, "tokens":[Ljava/lang/String;
    move-object/from16 v2, v21

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v20, v2, v7

    .line 42
    .local v20, "token":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 43
    const-string v22, "no-cache"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    const-string v22, "no-store"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 44
    :cond_1
    const/4 v3, 0x0

    .line 87
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v20    # "token":Ljava/lang/String;
    .end local v21    # "tokens":[Ljava/lang/String;
    :goto_1
    return-object v3

    .line 45
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v20    # "token":Ljava/lang/String;
    .restart local v21    # "tokens":[Ljava/lang/String;
    :cond_2
    const-string v22, "max-age="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 47
    const/16 v22, 0x8

    :try_start_0
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 41
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 51
    :cond_4
    const-string v22, "must-revalidate"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "proxy-revalidate"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 52
    :cond_5
    const-wide/16 v10, 0x0

    goto :goto_2

    .line 57
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v20    # "token":Ljava/lang/String;
    .end local v21    # "tokens":[Ljava/lang/String;
    :cond_6
    const-string v22, "expires"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "header":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 58
    .restart local v5    # "header":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 59
    invoke-static {v5}, Lmiui/net/http/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v16

    .line 62
    :cond_7
    const-string v22, "etag"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "header":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 63
    .restart local v5    # "header":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 64
    move-object v9, v5

    .line 68
    :cond_8
    if-eqz v4, :cond_9

    .line 69
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v10

    add-long v18, v12, v22

    .line 76
    .local v18, "softExpire":J
    :goto_3
    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 77
    new-instance v3, Lmiui/net/http/Cache$Entry;

    invoke-direct {v3}, Lmiui/net/http/Cache$Entry;-><init>()V

    .line 78
    .local v3, "entry":Lmiui/net/http/Cache$Entry;
    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v3, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 79
    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getContentLength()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v3, Lmiui/net/http/Cache$Entry;->length:J

    .line 80
    iput-object v9, v3, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    .line 81
    move-wide/from16 v0, v18

    iput-wide v0, v3, Lmiui/net/http/Cache$Entry;->softTtl:J

    .line 82
    move-wide/from16 v0, v18

    iput-wide v0, v3, Lmiui/net/http/Cache$Entry;->ttl:J

    .line 83
    iput-wide v14, v3, Lmiui/net/http/Cache$Entry;->serverDate:J

    .line 84
    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v3, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    goto/16 :goto_1

    .line 70
    .end local v3    # "entry":Lmiui/net/http/Cache$Entry;
    .end local v18    # "softExpire":J
    :cond_9
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-lez v22, :cond_a

    cmp-long v22, v16, v14

    if-ltz v22, :cond_a

    .line 71
    sub-long v22, v16, v14

    add-long v18, v12, v22

    .restart local v18    # "softExpire":J
    goto :goto_3

    .line 73
    .end local v18    # "softExpire":J
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 87
    .restart local v18    # "softExpire":J
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 48
    .end local v18    # "softExpire":J
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v20    # "token":Ljava/lang/String;
    .restart local v21    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v22

    goto/16 :goto_2
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 4
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 99
    :goto_0
    return-wide v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
