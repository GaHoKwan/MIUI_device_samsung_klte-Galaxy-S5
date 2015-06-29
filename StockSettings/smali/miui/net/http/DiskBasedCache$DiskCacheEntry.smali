.class Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiskCacheEntry"
.end annotation


# instance fields
.field public contentEncoding:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public key:Ljava/lang/String;

.field private volatile markDelete:Z

.field public offset:J

.field public responseHeaders:Ljava/util/Map;
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

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J

.field private volatile using:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 391
    const/4 v2, 0x0

    .line 394
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readInt(Ljava/io/InputStream;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    const v6, 0x20140228

    if-eq v5, v6, :cond_0

    .line 424
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v1, v4

    :goto_0
    return-object v1

    .line 399
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :try_start_2
    new-instance v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-direct {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;-><init>()V

    .line 400
    .local v1, "entry":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    invoke-static {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    .line 401
    invoke-static {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    .line 402
    const-string v5, ""

    iget-object v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    const/4 v5, 0x0

    iput-object v5, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    .line 405
    :cond_1
    invoke-static {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    .line 406
    const-string v5, ""

    iget-object v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 407
    const/4 v5, 0x0

    iput-object v5, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    .line 409
    :cond_2
    invoke-static {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    .line 410
    const-string v5, ""

    iget-object v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 411
    const/4 v5, 0x0

    iput-object v5, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    .line 413
    :cond_3
    invoke-static {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    .line 414
    invoke-static {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    .line 415
    invoke-static {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    .line 416
    invoke-static {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readHeaders(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    .line 417
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    .line 418
    iput-object p0, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    .line 419
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 424
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 421
    .end local v1    # "entry":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v1, v4

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 421
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 564
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 565
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 567
    :cond_0
    return v0
.end method

.method static readHeaders(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 644
    .local v2, "size":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 645
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 646
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_0
    return-object v0
.end method

.method static readInt(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "n":I
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    or-int/2addr v0, v1

    .line 580
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 581
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 582
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 583
    return v0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xff

    .line 598
    const-wide/16 v0, 0x0

    .line 599
    .local v0, "n":J
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 600
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 601
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 602
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 603
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 604
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 605
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 606
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 607
    return-wide v0
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 618
    .local v2, "n":I
    new-array v0, v2, [B

    .line 620
    .local v0, "b":[B
    const/4 v3, 0x0

    .line 621
    .local v3, "pos":I
    :goto_0
    if-ge v3, v2, :cond_0

    sub-int v4, v2, v3

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 622
    add-int/2addr v3, v1

    goto :goto_0

    .line 624
    .end local v1    # "count":I
    :cond_0
    if-eq v3, v2, :cond_1

    .line 625
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes but read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 627
    :cond_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method public static toFile(Ljava/io/File;Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .locals 12
    .param p0, "file"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "e"    # Lmiui/net/http/Cache$Entry;

    .prologue
    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, "fos":Ljava/io/FileOutputStream;
    iget-object v0, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 439
    .local v0, "data":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 441
    .local v5, "result":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 443
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const v6, 0x20140228

    :try_start_1
    invoke-static {v4, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeInt(Ljava/io/OutputStream;I)V

    .line 445
    invoke-static {v4, p1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 446
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, ""

    :goto_0
    invoke-static {v4, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 447
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v6, ""

    :goto_1
    invoke-static {v4, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 448
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    if-nez v6, :cond_4

    const-string v6, ""

    :goto_2
    invoke-static {v4, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 449
    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-static {v4, v6, v7}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    .line 450
    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    invoke-static {v4, v6, v7}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    .line 451
    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {v4, v6, v7}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    .line 452
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-static {v6, v4}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeHeaders(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 453
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 455
    new-instance v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-direct {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;-><init>()V

    .line 456
    .local v1, "entry":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    iput-object p1, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    .line 457
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    iput-object v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    .line 458
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iput-object v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    .line 459
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    iput-object v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    .line 460
    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    .line 461
    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    .line 462
    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    .line 463
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    .line 464
    iput-object p0, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    .line 465
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    .line 467
    invoke-static {v0, v4}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 468
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 470
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    iput-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    .line 471
    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->length:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    .line 472
    iget-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v8, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v6, v8

    iput-wide v6, p2, Lmiui/net/http/Cache$Entry;->length:J

    .line 476
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 477
    const/4 v3, 0x0

    .line 479
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;

    invoke-direct {v6, v1}, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;-><init>(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    iput-object v6, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    move-object v5, v1

    .line 484
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 485
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 487
    if-nez v5, :cond_1

    .line 488
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 489
    const-string v6, "DisBasedCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot delete file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v1    # "entry":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    :cond_1
    :goto_3
    return-object v5

    .line 446
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    goto/16 :goto_0

    .line 447
    :cond_3
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    goto/16 :goto_1

    .line 448
    :cond_4
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_2

    .line 473
    .restart local v1    # "entry":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    :cond_5
    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->length:J

    iget-wide v8, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v10, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 474
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "length not match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p2, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v10, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 481
    .end local v1    # "entry":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 482
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v2, "ex":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    const-string v6, "DisBasedCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot save cache to disk file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 484
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 485
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 487
    if-nez v5, :cond_1

    .line 488
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 489
    const-string v6, "DisBasedCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot delete file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 484
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 485
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 487
    if-nez v5, :cond_6

    .line 488
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_6

    .line 489
    const-string v7, "DisBasedCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot delete file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v6

    .line 484
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 481
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method static writeHeaders(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {p1, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeInt(Ljava/io/OutputStream;I)V

    .line 633
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 634
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 635
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeInt(Ljava/io/OutputStream;I)V

    .line 640
    :cond_1
    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 572
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 573
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 574
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 575
    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 588
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 589
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 590
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 591
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 592
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 593
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 594
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 595
    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 612
    .local v0, "b":[B
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    .line 613
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 614
    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete()V
    .locals 3

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    if-lez v0, :cond_1

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->markDelete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 553
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    const-string v0, "DisBasedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUsing()Z
    .locals 1

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    .line 539
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->markDelete:Z

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    const-string v0, "DisBasedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :cond_0
    monitor-exit p0

    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toCacheEntry()Lmiui/net/http/Cache$Entry;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 501
    :try_start_0
    new-instance v0, Lmiui/net/http/Cache$Entry;

    invoke-direct {v0}, Lmiui/net/http/Cache$Entry;-><init>()V

    .line 502
    .local v0, "e":Lmiui/net/http/Cache$Entry;
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, v0, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 503
    iget-object v2, v0, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 516
    .end local v0    # "e":Lmiui/net/http/Cache$Entry;
    :goto_0
    return-object v0

    .line 506
    .restart local v0    # "e":Lmiui/net/http/Cache$Entry;
    :cond_0
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lmiui/net/http/Cache$Entry;->length:J

    .line 507
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    iput-object v2, v0, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    .line 508
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    iput-object v2, v0, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    .line 509
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    iput-object v2, v0, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    .line 510
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    iput-wide v2, v0, Lmiui/net/http/Cache$Entry;->serverDate:J

    .line 511
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    iput-wide v2, v0, Lmiui/net/http/Cache$Entry;->ttl:J

    .line 512
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    iput-wide v2, v0, Lmiui/net/http/Cache$Entry;->softTtl:J

    .line 513
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    iput-object v2, v0, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    .end local v0    # "e":Lmiui/net/http/Cache$Entry;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 516
    goto :goto_0
.end method
