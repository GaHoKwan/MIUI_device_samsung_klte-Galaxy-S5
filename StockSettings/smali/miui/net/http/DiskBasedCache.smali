.class public Lmiui/net/http/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lmiui/net/http/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;,
        Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20140228

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0xa00000

.field private static final HYSTERESIS_FACTOR:F = 0.9f

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lmiui/net/http/DiskBasedCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisBasedCache"


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/net/http/DiskBasedCache$DiskCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lmiui/net/http/DiskBasedCache$1;

    invoke-direct {v0}, Lmiui/net/http/DiskBasedCache$1;-><init>()V

    sput-object v0, Lmiui/net/http/DiskBasedCache;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    const/high16 v1, 0xa00000

    invoke-direct {p0, v0, v1}, Lmiui/net/http/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDirectory"    # Ljava/io/File;

    .prologue
    .line 102
    const/high16 v0, 0xa00000

    invoke-direct {p0, p1, v0}, Lmiui/net/http/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "maxCacheSizeInBytes"    # I

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    iput-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance p1, Ljava/io/File;

    .end local p1    # "rootDirectory":Ljava/io/File;
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "miui.net.http"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .restart local p1    # "rootDirectory":Ljava/io/File;
    :cond_0
    iput-object p1, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 116
    iput p2, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 117
    return-void
.end method

.method public static getDefault()Lmiui/net/http/DiskBasedCache;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lmiui/net/http/DiskBasedCache;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache;

    return-object v0
.end method

.method private getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v1, "MD5"

    invoke-static {p1, v1}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private pruneIfNeeded(J)V
    .locals 13
    .param p1, "neededSize"    # J

    .prologue
    const v12, 0x3f666666    # 0.9f

    .line 217
    iget-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v6, p1

    iget v3, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 223
    .local v4, "now":J
    iget-object v6, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v6

    .line 225
    :try_start_0
    iget-object v3, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 226
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 227
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 228
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .line 229
    .local v0, "e":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    iget-wide v8, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_2

    .line 230
    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    .line 231
    iget-wide v8, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v10, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 235
    .end local v0    # "e":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;>;"
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    iget-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v6, p1

    iget v3, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    .line 241
    iget-object v6, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v6

    .line 243
    :try_start_2
    iget-object v3, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 244
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 246
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .line 247
    .restart local v0    # "e":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    iget-wide v8, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_4

    .line 248
    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    .line 249
    iget-wide v8, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v10, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 252
    iget-wide v8, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v8, p1

    long-to-float v3, v8

    iget v7, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v3, v3, v7

    if-gez v3, :cond_4

    .line 257
    .end local v0    # "e":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;"
    :cond_5
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 259
    iget-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v6, p1

    iget v3, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    .line 263
    iget-object v6, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v6

    .line 265
    :try_start_3
    iget-object v3, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 266
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 268
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .line 269
    .restart local v0    # "e":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->isUsing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 273
    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    .line 274
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 276
    iget-wide v8, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v8, p1

    long-to-float v3, v8

    iget v7, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v3, v3, v7

    if-gez v3, :cond_6

    .line 280
    .end local v0    # "e":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;"
    :cond_7
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 257
    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method private putEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .locals 10
    .param p1, "entry"    # Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .prologue
    .line 289
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v2

    .line 290
    :try_start_0
    iget-object v1, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    iget-object v3, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .line 291
    .local v0, "old":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    if-nez v0, :cond_0

    .line 292
    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v6, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    .line 296
    :goto_0
    iget-object v1, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    iget-object v3, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    monitor-exit v2

    .line 298
    return-void

    .line 294
    :cond_0
    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v6, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v8, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    goto :goto_0

    .line 297
    .end local v0    # "old":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .locals 6
    .param p1, "entry"    # Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .prologue
    .line 306
    iget-object v1, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    .line 308
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    iget-object v2, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 192
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 193
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-virtual {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    goto :goto_0

    .line 196
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/net/http/DiskBasedCache$DiskCacheEntry;>;"
    :cond_0
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 197
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    .line 198
    return-void
.end method

.method public get(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v1, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .line 122
    .local v0, "entry":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    if-nez v0, :cond_0

    .line 123
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->toCacheEntry()Lmiui/net/http/Cache$Entry;

    move-result-object v1

    goto :goto_0
.end method

.method public initialize()V
    .locals 9

    .prologue
    .line 143
    iget-object v6, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 144
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    .line 146
    iget-object v6, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 147
    iget-object v6, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 148
    const-string v6, "DisBasedCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot create directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v6, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 154
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 158
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 159
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->fromFile(Ljava/io/File;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    move-result-object v1

    .line 160
    .local v1, "entry":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    if-eqz v1, :cond_3

    .line 161
    invoke-direct {p0, v1}, Lmiui/net/http/DiskBasedCache;->putEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    .line 158
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 164
    const-string v6, "DisBasedCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot delete file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullExpire"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 172
    iget-object v1, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .line 173
    .local v0, "e":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    if-eqz v0, :cond_0

    .line 174
    iput-wide v2, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    .line 175
    if-eqz p2, :cond_0

    .line 176
    iput-wide v2, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    .line 179
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lmiui/net/http/Cache$Entry;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lmiui/net/http/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 132
    .local v1, "file":Ljava/io/File;
    invoke-static {v1, p1, p2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->toFile(Ljava/io/File;Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    move-result-object v0

    .line 133
    .local v0, "e":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    if-eqz v0, :cond_0

    .line 134
    iget-wide v2, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    invoke-direct {p0, v2, v3}, Lmiui/net/http/DiskBasedCache;->pruneIfNeeded(J)V

    .line 135
    invoke-direct {p0, v0}, Lmiui/net/http/DiskBasedCache;->putEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    .line 136
    const/4 v2, 0x1

    .line 138
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v1, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .line 184
    .local v0, "entry":Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    .line 186
    invoke-direct {p0, v0}, Lmiui/net/http/DiskBasedCache;->removeEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    .line 188
    :cond_0
    return-void
.end method
