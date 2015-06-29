.class Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheFileContentInputStream"
.end annotation


# instance fields
.field private mDiskCacheEntry:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;


# direct methods
.method protected constructor <init>(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .locals 1
    .param p1, "diskCacheEntry"    # Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    invoke-static {p1}, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->getInputStream(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 667
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 668
    iput-object p1, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->mDiskCacheEntry:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .line 670
    :cond_0
    return-void
.end method

.method private static getInputStream(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)Ljava/io/InputStream;
    .locals 6
    .param p0, "diskCacheEntry"    # Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->acquire()V

    .line 674
    const/4 v1, 0x1

    .line 676
    .local v1, "release":Z
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 677
    .local v0, "is":Ljava/io/InputStream;
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 678
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip failed for file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .end local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    :cond_0
    throw v2

    .line 680
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_1
    const/4 v1, 0x0

    .line 683
    if-eqz v1, :cond_2

    .line 684
    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->mDiskCacheEntry:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    .line 692
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 693
    return-void
.end method
