.class public Lmiui/util/Pools$SimplePool;
.super Lmiui/util/Pools$BasePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/util/Pools$BasePool",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lmiui/util/Pools$Manager;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/Pools$Manager",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lmiui/util/Pools$SimplePool;, "Lmiui/util/Pools$SimplePool<TT;>;"
    .local p1, "manager":Lmiui/util/Pools$Manager;, "Lmiui/util/Pools$Manager<TT;>;"
    invoke-direct {p0, p1, p2}, Lmiui/util/Pools$BasePool;-><init>(Lmiui/util/Pools$Manager;I)V

    .line 479
    return-void
.end method


# virtual methods
.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 474
    .local p0, "this":Lmiui/util/Pools$SimplePool;, "Lmiui/util/Pools$SimplePool<TT;>;"
    invoke-super {p0}, Lmiui/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 474
    .local p0, "this":Lmiui/util/Pools$SimplePool;, "Lmiui/util/Pools$SimplePool<TT;>;"
    invoke-super {p0}, Lmiui/util/Pools$BasePool;->close()V

    return-void
.end method

.method final createInstanceHolder(Ljava/lang/Class;I)Lmiui/util/Pools$IInstanceHolder;
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lmiui/util/Pools$IInstanceHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lmiui/util/Pools$SimplePool;, "Lmiui/util/Pools$SimplePool<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1, p2}, Lmiui/util/Pools;->onPoolCreate(Ljava/lang/Class;I)Lmiui/util/Pools$InstanceHolder;

    move-result-object v0

    return-object v0
.end method

.method final destroyInstanceHolder(Lmiui/util/Pools$IInstanceHolder;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/Pools$IInstanceHolder",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lmiui/util/Pools$SimplePool;, "Lmiui/util/Pools$SimplePool<TT;>;"
    .local p1, "instanceHolder":Lmiui/util/Pools$IInstanceHolder;, "Lmiui/util/Pools$IInstanceHolder<TT;>;"
    check-cast p1, Lmiui/util/Pools$InstanceHolder;

    .end local p1    # "instanceHolder":Lmiui/util/Pools$IInstanceHolder;, "Lmiui/util/Pools$IInstanceHolder<TT;>;"
    invoke-static {p1, p2}, Lmiui/util/Pools;->onPoolClose(Lmiui/util/Pools$InstanceHolder;I)V

    .line 489
    return-void
.end method

.method public bridge synthetic getSize()I
    .locals 1

    .prologue
    .line 474
    .local p0, "this":Lmiui/util/Pools$SimplePool;, "Lmiui/util/Pools$SimplePool<TT;>;"
    invoke-super {p0}, Lmiui/util/Pools$BasePool;->getSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 474
    .local p0, "this":Lmiui/util/Pools$SimplePool;, "Lmiui/util/Pools$SimplePool<TT;>;"
    invoke-super {p0, p1}, Lmiui/util/Pools$BasePool;->release(Ljava/lang/Object;)V

    return-void
.end method
