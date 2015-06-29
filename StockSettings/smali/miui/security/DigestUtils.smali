.class public Lmiui/security/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field public static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field public static final ALGORITHM_SHA_1:Ljava/lang/String; = "SHA-1"

.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    .local v1, "digest":Ljava/security/MessageDigest;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 75
    .local v0, "bytes":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    if-lez v3, :cond_0

    .line 76
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 69
    .end local v0    # "bytes":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "read":I
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "NoSuchAlgorithmException"

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 79
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "bytes":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "read":I
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    return-object v4
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/lang/String;)[B
    .locals 1
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/security/DigestUtils;->get([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static get([BLjava/lang/String;)[B
    .locals 4
    .param p0, "content"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 52
    .local v1, "is":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {v1, p1}, Lmiui/security/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IO exception happend in ByteArrayInputStream"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
