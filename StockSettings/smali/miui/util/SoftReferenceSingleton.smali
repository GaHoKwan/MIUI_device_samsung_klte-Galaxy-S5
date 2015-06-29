.class public abstract Lmiui/util/SoftReferenceSingleton;
.super Ljava/lang/Object;
.source "SoftReferenceSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lmiui/util/SoftReferenceSingleton;, "Lmiui/util/SoftReferenceSingleton<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method protected abstract createInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lmiui/util/SoftReferenceSingleton;, "Lmiui/util/SoftReferenceSingleton<TT;>;"
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v1, p0, Lmiui/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .local v0, "t":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    .line 25
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0}, Lmiui/util/SoftReferenceSingleton;->createInstance()Ljava/lang/Object;

    move-result-object v0

    .line 26
    .restart local v0    # "t":Ljava/lang/Object;, "TT;"
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    .line 28
    :cond_1
    monitor-exit p0

    return-object v0

    .line 29
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
