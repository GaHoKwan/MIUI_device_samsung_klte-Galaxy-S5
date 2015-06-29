.class abstract Lmiui/util/Pools$BasePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Lmiui/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BasePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/Pools$Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mFinalizeGuardian:Ljava/lang/Object;

.field private mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$IInstanceHolder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mManager:Lmiui/util/Pools$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Manager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mSize:I


# direct methods
.method public constructor <init>(Lmiui/util/Pools$Manager;I)V
    .locals 4
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/Pools$Manager",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lmiui/util/Pools$BasePool;, "Lmiui/util/Pools$BasePool<TT;>;"
    .local p1, "manager":Lmiui/util/Pools$Manager;, "Lmiui/util/Pools$Manager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v2, Lmiui/util/Pools$BasePool$1;

    invoke-direct {v2, p0}, Lmiui/util/Pools$BasePool$1;-><init>(Lmiui/util/Pools$BasePool;)V

    iput-object v2, p0, Lmiui/util/Pools$BasePool;->mFinalizeGuardian:Ljava/lang/Object;

    .line 363
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ge p2, v2, :cond_1

    .line 365
    :cond_0
    iget-object v2, p0, Lmiui/util/Pools$BasePool;->mFinalizeGuardian:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p0, Lmiui/util/Pools$BasePool;->mSize:I

    .line 366
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "manager cannot be null and size cannot less then 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 369
    :cond_1
    iput-object p1, p0, Lmiui/util/Pools$BasePool;->mManager:Lmiui/util/Pools$Manager;

    .line 370
    iput p2, p0, Lmiui/util/Pools$BasePool;->mSize:I

    .line 371
    iget-object v2, p0, Lmiui/util/Pools$BasePool;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {v2}, Lmiui/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    move-result-object v1

    .line 372
    .local v1, "element":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_2

    .line 373
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "manager create instance cannot return null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 377
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, v0, p2}, Lmiui/util/Pools$BasePool;->createInstanceHolder(Ljava/lang/Class;I)Lmiui/util/Pools$IInstanceHolder;

    move-result-object v2

    iput-object v2, p0, Lmiui/util/Pools$BasePool;->mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;

    .line 378
    invoke-virtual {p0, v1}, Lmiui/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 379
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Lmiui/util/Pools$BasePool;, "Lmiui/util/Pools$BasePool<TT;>;"
    invoke-virtual {p0}, Lmiui/util/Pools$BasePool;->doAcquire()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 430
    .local p0, "this":Lmiui/util/Pools$BasePool;, "Lmiui/util/Pools$BasePool<TT;>;"
    iget-object v0, p0, Lmiui/util/Pools$BasePool;->mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lmiui/util/Pools$BasePool;->mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;

    iget v1, p0, Lmiui/util/Pools$BasePool;->mSize:I

    invoke-virtual {p0, v0, v1}, Lmiui/util/Pools$BasePool;->destroyInstanceHolder(Lmiui/util/Pools$IInstanceHolder;I)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/Pools$BasePool;->mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;

    .line 434
    :cond_0
    return-void
.end method

.method abstract createInstanceHolder(Ljava/lang/Class;I)Lmiui/util/Pools$IInstanceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lmiui/util/Pools$IInstanceHolder",
            "<TT;>;"
        }
    .end annotation
.end method

.method abstract destroyInstanceHolder(Lmiui/util/Pools$IInstanceHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/Pools$IInstanceHolder",
            "<TT;>;I)V"
        }
    .end annotation
.end method

.method protected final doAcquire()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lmiui/util/Pools$BasePool;, "Lmiui/util/Pools$BasePool<TT;>;"
    iget-object v1, p0, Lmiui/util/Pools$BasePool;->mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;

    if-nez v1, :cond_0

    .line 386
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot acquire object after close()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_0
    iget-object v1, p0, Lmiui/util/Pools$BasePool;->mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;

    invoke-interface {v1}, Lmiui/util/Pools$IInstanceHolder;->get()Ljava/lang/Object;

    move-result-object v0

    .line 390
    .local v0, "element":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    .line 391
    iget-object v1, p0, Lmiui/util/Pools$BasePool;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {v1}, Lmiui/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    move-result-object v0

    .line 392
    if-nez v0, :cond_1

    .line 393
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "manager create instance cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_1
    iget-object v1, p0, Lmiui/util/Pools$BasePool;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {v1, v0}, Lmiui/util/Pools$Manager;->onAcquire(Ljava/lang/Object;)V

    .line 399
    return-object v0
.end method

.method protected final doRelease(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lmiui/util/Pools$BasePool;, "Lmiui/util/Pools$BasePool<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmiui/util/Pools$BasePool;->mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release object after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    if-nez p1, :cond_2

    .line 416
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    iget-object v0, p0, Lmiui/util/Pools$BasePool;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {v0, p1}, Lmiui/util/Pools$Manager;->onRelease(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lmiui/util/Pools$BasePool;->mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;

    invoke-interface {v0, p1}, Lmiui/util/Pools$IInstanceHolder;->put(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lmiui/util/Pools$BasePool;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {v0, p1}, Lmiui/util/Pools$Manager;->onDestroy(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 438
    .local p0, "this":Lmiui/util/Pools$BasePool;, "Lmiui/util/Pools$BasePool<TT;>;"
    iget-object v0, p0, Lmiui/util/Pools$BasePool;->mInstanceHolder:Lmiui/util/Pools$IInstanceHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/util/Pools$BasePool;->mSize:I

    goto :goto_0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lmiui/util/Pools$BasePool;, "Lmiui/util/Pools$BasePool<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lmiui/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 426
    return-void
.end method
