.class public final Lmiui/util/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/Pools$SoftReferencePool;,
        Lmiui/util/Pools$SimplePool;,
        Lmiui/util/Pools$BasePool;,
        Lmiui/util/Pools$SoftReferenceInstanceHolder;,
        Lmiui/util/Pools$InstanceHolder;,
        Lmiui/util/Pools$IInstanceHolder;,
        Lmiui/util/Pools$Manager;,
        Lmiui/util/Pools$Pool;
    }
.end annotation


# static fields
.field private static final mInstanceHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lmiui/util/Pools$InstanceHolder",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lmiui/util/Pools$SoftReferenceInstanceHolder",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final mStringBuilderPool:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 266
    new-instance v0, Lmiui/util/Pools$1;

    invoke-direct {v0}, Lmiui/util/Pools$1;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiui/util/Pools;->mStringBuilderPool:Lmiui/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lmiui/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lmiui/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/util/Pools$Manager",
            "<TT;>;I)",
            "Lmiui/util/Pools$SimplePool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "manager":Lmiui/util/Pools$Manager;, "Lmiui/util/Pools$Manager<TT;>;"
    new-instance v0, Lmiui/util/Pools$SimplePool;

    invoke-direct {v0, p0, p1}, Lmiui/util/Pools$SimplePool;-><init>(Lmiui/util/Pools$Manager;I)V

    return-object v0
.end method

.method public static createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/util/Pools$Manager",
            "<TT;>;I)",
            "Lmiui/util/Pools$SoftReferencePool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "manager":Lmiui/util/Pools$Manager;, "Lmiui/util/Pools$Manager<TT;>;"
    new-instance v0, Lmiui/util/Pools$SoftReferencePool;

    invoke-direct {v0, p0, p1}, Lmiui/util/Pools$SoftReferencePool;-><init>(Lmiui/util/Pools$Manager;I)V

    return-object v0
.end method

.method public static getStringBuilderPool()Lmiui/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/Pools$Pool",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lmiui/util/Pools;->mStringBuilderPool:Lmiui/util/Pools$Pool;

    return-object v0
.end method

.method static onPoolClose(Lmiui/util/Pools$InstanceHolder;I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/util/Pools$InstanceHolder",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "holder":Lmiui/util/Pools$InstanceHolder;, "Lmiui/util/Pools$InstanceHolder<TT;>;"
    sget-object v1, Lmiui/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 311
    neg-int v0, p1

    :try_start_0
    invoke-virtual {p0, v0}, Lmiui/util/Pools$InstanceHolder;->resize(I)V

    .line 312
    monitor-exit v1

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static onPoolCreate(Ljava/lang/Class;I)Lmiui/util/Pools$InstanceHolder;
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lmiui/util/Pools$InstanceHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lmiui/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 292
    :try_start_0
    sget-object v1, Lmiui/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/Pools$InstanceHolder;

    .line 294
    .local v0, "holder":Lmiui/util/Pools$InstanceHolder;, "Lmiui/util/Pools$InstanceHolder<TT;>;"
    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lmiui/util/Pools$InstanceHolder;

    .end local v0    # "holder":Lmiui/util/Pools$InstanceHolder;, "Lmiui/util/Pools$InstanceHolder<TT;>;"
    invoke-direct {v0, p0, p1}, Lmiui/util/Pools$InstanceHolder;-><init>(Ljava/lang/Class;I)V

    .line 296
    .restart local v0    # "holder":Lmiui/util/Pools$InstanceHolder;, "Lmiui/util/Pools$InstanceHolder<TT;>;"
    sget-object v1, Lmiui/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :goto_0
    monitor-exit v2

    return-object v0

    .line 298
    :cond_0
    invoke-virtual {v0, p1}, Lmiui/util/Pools$InstanceHolder;->resize(I)V

    goto :goto_0

    .line 301
    .end local v0    # "holder":Lmiui/util/Pools$InstanceHolder;, "Lmiui/util/Pools$InstanceHolder<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static onSoftReferencePoolClose(Lmiui/util/Pools$SoftReferenceInstanceHolder;I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/util/Pools$SoftReferenceInstanceHolder",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "holder":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    sget-object v1, Lmiui/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 342
    neg-int v0, p1

    :try_start_0
    invoke-virtual {p0, v0}, Lmiui/util/Pools$SoftReferenceInstanceHolder;->resize(I)V

    .line 343
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static onSoftReferencePoolCreate(Ljava/lang/Class;I)Lmiui/util/Pools$SoftReferenceInstanceHolder;
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lmiui/util/Pools$SoftReferenceInstanceHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lmiui/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 323
    :try_start_0
    sget-object v1, Lmiui/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/Pools$SoftReferenceInstanceHolder;

    .line 325
    .local v0, "holder":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lmiui/util/Pools$SoftReferenceInstanceHolder;

    .end local v0    # "holder":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    invoke-direct {v0, p0, p1}, Lmiui/util/Pools$SoftReferenceInstanceHolder;-><init>(Ljava/lang/Class;I)V

    .line 327
    .restart local v0    # "holder":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    sget-object v1, Lmiui/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :goto_0
    monitor-exit v2

    return-object v0

    .line 329
    :cond_0
    invoke-virtual {v0, p1}, Lmiui/util/Pools$SoftReferenceInstanceHolder;->resize(I)V

    goto :goto_0

    .line 332
    .end local v0    # "holder":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
