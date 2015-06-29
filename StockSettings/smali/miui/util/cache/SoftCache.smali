.class public Lmiui/util/cache/SoftCache;
.super Ljava/lang/Object;
.source "SoftCache.java"

# interfaces
.implements Lmiui/util/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/cache/Cache",
        "<TK;TT;>;"
    }
.end annotation


# instance fields
.field private mCaches:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lmiui/util/cache/SoftCache;, "Lmiui/util/cache/SoftCache<TK;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/cache/SoftCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private trim()V
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Lmiui/util/cache/SoftCache;, "Lmiui/util/cache/SoftCache<TK;TT;>;"
    iget-object v1, p0, Lmiui/util/cache/SoftCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/lang/ref/SoftReference<TT;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 65
    .local p0, "this":Lmiui/util/cache/SoftCache;, "Lmiui/util/cache/SoftCache<TK;TT;>;"
    iget-object v2, p0, Lmiui/util/cache/SoftCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

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

    .line 66
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/ref/SoftReference<TT;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_0

    .line 69
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/ref/SoftReference<TT;>;>;"
    :cond_0
    iget-object v2, p0, Lmiui/util/cache/SoftCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 70
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lmiui/util/cache/SoftCache;, "Lmiui/util/cache/SoftCache<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lmiui/util/cache/SoftCache;->trim()V

    .line 56
    iget-object v1, p0, Lmiui/util/cache/SoftCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 57
    .local v0, "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lmiui/util/cache/SoftCache;, "Lmiui/util/cache/SoftCache<TK;TT;>;"
    invoke-direct {p0}, Lmiui/util/cache/SoftCache;->trim()V

    .line 80
    iget-object v0, p0, Lmiui/util/cache/SoftCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lmiui/util/cache/SoftCache;, "Lmiui/util/cache/SoftCache<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "cacheItem":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/util/cache/SoftCache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 31
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;I)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lmiui/util/cache/SoftCache;, "Lmiui/util/cache/SoftCache<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "cacheItem":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lmiui/util/cache/SoftCache;->trim()V

    .line 43
    iget-object v0, p0, Lmiui/util/cache/SoftCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 21
    .local p0, "this":Lmiui/util/cache/SoftCache;, "Lmiui/util/cache/SoftCache<TK;TT;>;"
    return-void
.end method
