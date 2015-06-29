.class Lmiui/util/cache/LruCache$CacheItem;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/cache/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public cacheItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public size:I

.field public softCacheItem:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/cache/LruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/util/cache/LruCache$1;

    .prologue
    .line 28
    .local p0, "this":Lmiui/util/cache/LruCache$CacheItem;, "Lmiui/util/cache/LruCache$CacheItem<TK;TT;>;"
    invoke-direct {p0}, Lmiui/util/cache/LruCache$CacheItem;-><init>()V

    return-void
.end method
