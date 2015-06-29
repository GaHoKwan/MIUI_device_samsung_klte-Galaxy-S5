.class public Lmiui/net/http/HttpRequestParams;
.super Ljava/lang/Object;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/HttpRequestParams$FileWrapper;
    }
.end annotation


# static fields
.field public static DEFAULT_ENCODING:Ljava/lang/String;


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mHasStream:Z

.field private mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "UTF-8"

    sput-object v0, Lmiui/net/http/HttpRequestParams;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lmiui/net/http/HttpRequestParams;->DEFAULT_ENCODING:Ljava/lang/String;

    iput-object v0, p0, Lmiui/net/http/HttpRequestParams;->mEncoding:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z

    .line 56
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 8
    .param p1, "keysAndValues"    # [Ljava/lang/Object;

    .prologue
    .line 63
    invoke-direct {p0}, Lmiui/net/http/HttpRequestParams;-><init>()V

    .line 64
    array-length v3, p1

    .line 65
    .local v3, "len":I
    rem-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_0

    .line 66
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Supplied argument must be even"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_5

    .line 70
    aget-object v5, p1, v0

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_1

    .line 71
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown argument name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_1
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    aget-object v4, p1, v5

    .line 76
    .local v4, "val":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 77
    check-cast v4, Ljava/lang/String;

    .end local v4    # "val":Ljava/lang/Object;
    invoke-virtual {p0, v1, v4}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;

    .line 69
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 78
    .restart local v4    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/io/File;

    if-eqz v5, :cond_3

    .line 79
    check-cast v4, Ljava/io/File;

    .end local v4    # "val":Ljava/lang/Object;
    invoke-virtual {p0, v1, v4}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/io/File;)Lmiui/net/http/HttpRequestParams;

    goto :goto_1

    .line 80
    .restart local v4    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_4

    move-object v2, v4

    .line 82
    check-cast v2, Ljava/util/List;

    .line 83
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/util/List;)Lmiui/net/http/HttpRequestParams;

    goto :goto_1

    .line 85
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown argument type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private getParamsList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 255
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v6, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 257
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 258
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {v7, v6, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_0

    .line 260
    check-cast v5, Ljava/util/List;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 261
    .local v4, "v":Ljava/lang/Object;
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-direct {v7, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/io/File;)Lmiui/net/http/HttpRequestParams;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/File;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 123
    :try_start_0
    iget-object v7, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lmiui/net/http/HttpRequestParams$FileWrapper;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    return-object p0

    .line 125
    :catch_0
    move-exception v6

    .line 126
    .local v6, "e":Ljava/io/FileNotFoundException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public add(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 143
    :try_start_0
    iget-object v7, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lmiui/net/http/HttpRequestParams$FileWrapper;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    return-object p0

    .line 145
    :catch_0
    move-exception v6

    .line 146
    .local v6, "e":Ljava/io/FileNotFoundException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public add(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "streamLength"    # J
    .param p5, "filename"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 175
    iget-object v6, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lmiui/net/http/HttpRequestParams$FileWrapper;

    const/4 v5, 0x0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z

    .line 178
    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "streamLength"    # J
    .param p5, "filename"    # Ljava/lang/String;
    .param p6, "contentType"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 192
    iget-object v6, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lmiui/net/http/HttpRequestParams$FileWrapper;

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z

    .line 195
    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/util/List;)Lmiui/net/http/HttpRequestParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/net/http/HttpRequestParams;"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 160
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    return-object p0
.end method

.method public add(Ljava/util/Map;)Lmiui/net/http/HttpRequestParams;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/net/http/HttpRequestParams;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "sources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
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

    .line 205
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;

    goto :goto_0

    .line 207
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method getEntity()Lorg/apache/http/HttpEntity;
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    iget-boolean v2, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z

    if-eqz v2, :cond_0

    .line 238
    new-instance v1, Lmiui/net/http/SimpleMultipartEntity;

    iget-object v2, p0, Lmiui/net/http/HttpRequestParams;->mEncoding:Ljava/lang/String;

    iget-object v3, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2, v3}, Lmiui/net/http/SimpleMultipartEntity;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    move-object v0, v1

    .line 246
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p0}, Lmiui/net/http/HttpRequestParams;->getParamsList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lmiui/net/http/HttpRequestParams;->mEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    move-object v0, v1

    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getParamString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0}, Lmiui/net/http/HttpRequestParams;->getParamsList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lmiui/net/http/HttpRequestParams;->mEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 96
    if-nez p1, :cond_0

    sget-object p1, Lmiui/net/http/HttpRequestParams;->DEFAULT_ENCODING:Ljava/lang/String;

    .end local p1    # "encoding":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lmiui/net/http/HttpRequestParams;->mEncoding:Ljava/lang/String;

    .line 97
    return-object p0
.end method
