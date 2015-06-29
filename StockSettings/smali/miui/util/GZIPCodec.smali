.class public final Lmiui/util/GZIPCodec;
.super Ljava/lang/Object;
.source "GZIPCodec.java"


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode([B)[B
    .locals 2
    .param p0, "compressed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lmiui/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)[B
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v0, "byteOut":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 58
    .local v1, "gzOut":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v1    # "gzOut":Ljava/util/zip/GZIPOutputStream;
    .local v2, "gzOut":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 61
    .end local v2    # "gzOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gzOut":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3

    .end local v1    # "gzOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzOut":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "gzOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gzOut":Ljava/util/zip/GZIPOutputStream;
    goto :goto_0
.end method

.method public static getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "gzip"

    return-object v0
.end method
