.class public abstract Lmiui/util/Pools$Manager;
.super Ljava/lang/Object;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Manager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lmiui/util/Pools$Manager;, "Lmiui/util/Pools$Manager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onAcquire(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lmiui/util/Pools$Manager;, "Lmiui/util/Pools$Manager<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onDestroy(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lmiui/util/Pools$Manager;, "Lmiui/util/Pools$Manager<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onRelease(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lmiui/util/Pools$Manager;, "Lmiui/util/Pools$Manager<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    return-void
.end method