.class public Lmiui/util/cache/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Lmiui/util/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/cache/LruCache$1;,
        Lmiui/util/cache/LruCache$CacheItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/cache/Cache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_MEMORY_SIZE:I


# instance fields
.field private final mCacheItems:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;",
            "Lmiui/util/cache/LruCache$CacheItem",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxSize:J

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lmiui/util/cache/LruCache;->BASE_MEMORY_SIZE:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .line 83
    .local p0, "this":Lmiui/util/cache/LruCache;, "Lmiui/util/cache/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-gez p1, :cond_0

    .line 85
    sget v0, Lmiui/util/cache/LruCache;->BASE_MEMORY_SIZE:I

    div-int/lit8 p1, v0, 0x8

    .line 88
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    .line 92
    return-void
.end method

.method private trim()V
    .locals 8

    .prologue
    .line 197
    .local p0, "this":Lmiui/util/cache/LruCache;, "Lmiui/util/cache/LruCache<TK;TV;>;"
    iget-object v3, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/cache/LruCache$CacheItem;

    .line 199
    .local v0, "cacheItem":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;"
    iget-object v3, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 201
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 211
    .end local v0    # "cacheItem":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/cache/LruCache$CacheItem;

    .line 212
    .local v2, "item":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;"
    if-eqz v2, :cond_4

    .line 213
    iget-wide v4, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget v3, v2, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    .line 214
    iget-object v3, v2, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_3

    .line 215
    new-instance v3, Ljava/lang/ref/SoftReference;

    iget-object v4, v2, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    .line 217
    :cond_3
    const/4 v3, 0x0

    iput-object v3, v2, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    .line 205
    .end local v2    # "item":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;"
    :cond_4
    iget-wide v4, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget-wide v6, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    .line 206
    iget-object v3, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    :cond_5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 167
    .local p0, "this":Lmiui/util/cache/LruCache;, "Lmiui/util/cache/LruCache<TK;TV;>;"
    iget-object v3, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 169
    :try_start_0
    iget-object v3, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 170
    .local v2, "kCacheItemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/cache/LruCache$CacheItem;

    .line 171
    .local v0, "cacheItem":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;"
    iget-object v3, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    .end local v0    # "cacheItem":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "kCacheItemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 176
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    iget-object v3, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/cache/LruCache;, "Lmiui/util/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 136
    :try_start_0
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V

    .line 138
    iget-object v2, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/cache/LruCache$CacheItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .local v0, "item":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;"
    if-nez v0, :cond_0

    .line 161
    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v1

    .line 143
    :cond_0
    :try_start_1
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 144
    iget-object v1, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 147
    :cond_1
    :try_start_2
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_3

    .line 148
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    .line 149
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 150
    iget-wide v2, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget v1, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    .line 151
    iget-wide v2, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget-wide v4, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 152
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V

    .line 154
    :cond_2
    iget-object v1, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 158
    :cond_3
    :try_start_3
    iget-object v2, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "item":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 184
    .local p0, "this":Lmiui/util/cache/LruCache;, "Lmiui/util/cache/LruCache<TK;TV;>;"
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 186
    :try_start_0
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V

    .line 187
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 189
    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lmiui/util/cache/LruCache;, "Lmiui/util/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "cacheItem":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 130
    .end local p3    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local p3    # "size":I
    :cond_1
    new-instance v0, Lmiui/util/cache/LruCache$CacheItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/util/cache/LruCache$CacheItem;-><init>(Lmiui/util/cache/LruCache$1;)V

    .line 118
    .local v0, "item":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TV;>;"
    iput-object p1, v0, Lmiui/util/cache/LruCache$CacheItem;->key:Ljava/lang/Object;

    .line 119
    iput-object p2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    .line 120
    if-ltz p3, :cond_2

    .end local p3    # "size":I
    :goto_1
    iput p3, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    .line 122
    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 124
    :try_start_0
    iget-object v1, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-wide v2, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget v1, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    .line 126
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 120
    .restart local p3    # "size":I
    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    .line 128
    .end local p3    # "size":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public setMaxSize(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .line 96
    .local p0, "this":Lmiui/util/cache/LruCache;, "Lmiui/util/cache/LruCache<TK;TV;>;"
    if-gez p1, :cond_0

    .line 97
    sget v0, Lmiui/util/cache/LruCache;->BASE_MEMORY_SIZE:I

    div-int/lit8 p1, v0, 0x8

    .line 100
    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    .line 102
    :try_start_0
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 103
    iget-wide v0, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget-wide v2, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 104
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
