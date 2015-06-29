.class Lmiui/net/http/SimpleMultipartEntity;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/SimpleMultipartEntity$EntityStream;
    }
.end annotation


# static fields
.field private static final MULTIPART_CHARS:[C


# instance fields
.field private mBoundary:Ljava/lang/String;

.field private mContentLength:J

.field private mEncoding:Ljava/lang/String;

.field private mStreamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/net/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Random;-><init>(J)V

    .line 41
    .local v8, "rand":Ljava/util/Random;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v10, 0x1e

    if-ge v3, v10, :cond_0

    .line 42
    sget-object v10, Lmiui/net/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    sget-object v11, Lmiui/net/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    array-length v11, v11

    invoke-virtual {v8, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    aget-char v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lmiui/net/http/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lmiui/net/http/SimpleMultipartEntity;->mEncoding:Ljava/lang/String;

    .line 47
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lmiui/net/http/SimpleMultipartEntity;->mStreamList:Ljava/util/ArrayList;

    .line 48
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lmiui/net/http/SimpleMultipartEntity;->mContentLength:J

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\r\n--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/net/http/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lmiui/net/http/SimpleMultipartEntity;->mEncoding:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 51
    .local v5, "internalBoundary":[B
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\r\n--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/net/http/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lmiui/net/http/SimpleMultipartEntity;->mEncoding:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 53
    .local v1, "endBoundary":[B
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/net/http/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lmiui/net/http/SimpleMultipartEntity;->add(Ljava/lang/String;)V

    .line 55
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 57
    .local v9, "value":Ljava/lang/Object;
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-direct {p0, v10, v9}, Lmiui/net/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_2
    invoke-direct {p0, v5}, Lmiui/net/http/SimpleMultipartEntity;->add([B)V

    goto :goto_1

    .line 59
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v10, v9, Ljava/util/List;

    if-eqz v10, :cond_4

    move-object v6, v9

    .line 61
    check-cast v6, Ljava/util/List;

    .line 62
    .local v6, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 63
    .local v7, "name":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_3

    .line 64
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v7, v10}, Lmiui/net/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, v5}, Lmiui/net/http/SimpleMultipartEntity;->add([B)V

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 67
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v7, v10}, Lmiui/net/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 68
    .end local v6    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "name":Ljava/lang/String;
    :cond_4
    instance-of v10, v9, Lmiui/net/http/HttpRequestParams$FileWrapper;

    if-nez v10, :cond_1

    .line 71
    new-instance v11, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected parameters "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 77
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "value":Ljava/lang/Object;
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 78
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 79
    .restart local v9    # "value":Ljava/lang/Object;
    instance-of v10, v9, Lmiui/net/http/HttpRequestParams$FileWrapper;

    if-eqz v10, :cond_6

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    check-cast v9, Lmiui/net/http/HttpRequestParams$FileWrapper;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-direct {p0, v10, v9}, Lmiui/net/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Lmiui/net/http/HttpRequestParams$FileWrapper;)V

    .line 81
    invoke-direct {p0, v5}, Lmiui/net/http/SimpleMultipartEntity;->add([B)V

    goto :goto_4

    .line 85
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    iget-object v10, p0, Lmiui/net/http/SimpleMultipartEntity;->mStreamList:Ljava/util/ArrayList;

    iget-object v11, p0, Lmiui/net/http/SimpleMultipartEntity;->mStreamList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-wide v10, p0, Lmiui/net/http/SimpleMultipartEntity;->mContentLength:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lmiui/net/http/SimpleMultipartEntity;->mContentLength:J

    .line 87
    return-void
.end method

.method private add(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J

    .prologue
    .line 130
    iget-object v0, p0, Lmiui/net/http/SimpleMultipartEntity;->mStreamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-wide v0, p0, Lmiui/net/http/SimpleMultipartEntity;->mContentLength:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lmiui/net/http/SimpleMultipartEntity;->mContentLength:J

    .line 132
    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/net/http/SimpleMultipartEntity;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/net/http/SimpleMultipartEntity;->add([B)V

    .line 122
    return-void
.end method

.method private add([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 125
    iget-object v0, p0, Lmiui/net/http/SimpleMultipartEntity;->mStreamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-wide v0, p0, Lmiui/net/http/SimpleMultipartEntity;->mContentLength:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/net/http/SimpleMultipartEntity;->mContentLength:J

    .line 127
    return-void
.end method

.method private addPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/net/http/SimpleMultipartEntity;->add(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p2}, Lmiui/net/http/SimpleMultipartEntity;->add(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private addPart(Ljava/lang/String;Lmiui/net/http/HttpRequestParams$FileWrapper;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Lmiui/net/http/HttpRequestParams$FileWrapper;

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lmiui/net/http/HttpRequestParams$FileWrapper;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/net/http/SimpleMultipartEntity;->add(Ljava/lang/String;)V

    .line 104
    iget-object v1, p2, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    const-string v0, "application/octet-stream"

    .line 110
    .local v0, "contentType":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/net/http/SimpleMultipartEntity;->add(Ljava/lang/String;)V

    .line 112
    const-string v1, "Content-Transfer-Encoding: binary\r\n\r\n"

    invoke-direct {p0, v1}, Lmiui/net/http/SimpleMultipartEntity;->add(Ljava/lang/String;)V

    .line 114
    iget-object v1, p2, Lmiui/net/http/HttpRequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    iget-wide v2, p2, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentLength:J

    invoke-direct {p0, v1, v2, v3}, Lmiui/net/http/SimpleMultipartEntity;->add(Ljava/io/InputStream;J)V

    .line 118
    .end local v0    # "contentType":Ljava/lang/String;
    :goto_1
    return-void

    .line 107
    :cond_1
    iget-object v0, p2, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0    # "contentType":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public consumeContent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v2, p0, Lmiui/net/http/SimpleMultipartEntity;->mStreamList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 178
    check-cast v1, Ljava/io/InputStream;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v2, p0, Lmiui/net/http/SimpleMultipartEntity;->mStreamList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 182
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;

    iget-object v1, p0, Lmiui/net/http/SimpleMultipartEntity;->mStreamList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lmiui/net/http/SimpleMultipartEntity$EntityStream;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lmiui/net/http/SimpleMultipartEntity;->mContentLength:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    .line 151
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/form-data; boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/net/http/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lmiui/net/http/SimpleMultipartEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 167
    return-void
.end method
