.class public Lmiui/util/concurrent/ConcurrentRingQueue;
.super Ljava/lang/Object;
.source "ConcurrentRingQueue.java"

# interfaces
.implements Lmiui/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/concurrent/ConcurrentRingQueue$1;,
        Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile mAdditional:I

.field private final mAllowExtendCapacity:Z

.field private final mAutoReleaseCapacity:Z

.field private mCapacity:I

.field private volatile mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(IZZ)V
    .locals 5
    .param p1, "capacity"    # I
    .param p2, "allowExtendCapacity"    # Z
    .param p3, "autoReleaseCapacity"    # Z

    .prologue
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 46
    iput-boolean p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    .line 47
    iput-boolean p3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    invoke-direct {v2, v4}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 52
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 53
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 54
    .local v1, "n":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 55
    new-instance v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    invoke-direct {v2, v4}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v2, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 56
    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v2, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 59
    return-void
.end method


# virtual methods
.method public clear()I
    .locals 6

    .prologue
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    const/4 v5, 0x0

    .line 159
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "lock":I
    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 159
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 163
    :cond_1
    const/4 v1, 0x0

    .line 165
    .local v1, "ret":I
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .local v2, "s":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    :goto_1
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v2, v3, :cond_2

    .line 166
    const/4 v3, 0x0

    iput-object v3, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 165
    iget-object v2, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_1

    .line 170
    :cond_2
    iput-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 172
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 173
    return v1
.end method

.method public decreaseCapacity(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    const/4 v3, 0x0

    .line 215
    iget-boolean v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    if-eqz v1, :cond_0

    if-gtz p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "lock":I
    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 219
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 223
    :cond_3
    iget v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    sub-int/2addr v1, p1

    iput v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 224
    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 226
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    const/4 v6, 0x0

    .line 97
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "lock":I
    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 97
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    const/4 v2, 0x0

    .line 102
    .local v2, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 103
    .local v1, "rc":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .end local v2    # "ret":Ljava/lang/Object;, "TT;"
    .local v3, "wc":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    :goto_1
    if-nez v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 104
    iget-object v2, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 105
    .restart local v2    # "ret":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    iput-object v4, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 103
    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_1

    .line 107
    .end local v2    # "ret":Ljava/lang/Object;, "TT;"
    :cond_2
    if-eqz v2, :cond_3

    .line 108
    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 110
    :cond_3
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 111
    return-object v2
.end method

.method public getCapacity()I
    .locals 2

    .prologue
    .line 184
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .local v0, "additional":I
    if-lez v0, :cond_0

    iget v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    add-int/2addr v1, v0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    goto :goto_0
.end method

.method public increaseCapacity(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    const/4 v3, 0x0

    .line 194
    iget-boolean v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    if-nez v1, :cond_0

    if-gtz p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "lock":I
    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 199
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 198
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 202
    :cond_3
    neg-int v1, p1

    iput v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 203
    iget v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    add-int/2addr v1, p1

    iput v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 205
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 178
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 63
    if-nez p1, :cond_0

    move v3, v5

    .line 92
    :goto_0
    return v3

    .line 67
    :cond_0
    iget-object v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .local v1, "lock":I
    :goto_1
    if-nez v1, :cond_1

    iget-object v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, -0x1

    invoke-virtual {v6, v5, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 68
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 67
    iget-object v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_1

    .line 71
    :cond_2
    const/4 v3, 0x0

    .line 72
    .local v3, "ret":Z
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 73
    .local v2, "rc":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 74
    .local v4, "wc":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 75
    .local v0, "additional":I
    iget-object v6, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v6, v2, :cond_5

    .line 76
    iput-object p1, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 77
    iget-object v6, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v6, v6, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v6, v2, :cond_3

    iget-boolean v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    if-eqz v6, :cond_3

    if-lez v0, :cond_3

    .line 78
    iget-object v6, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v6, v6, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v6, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 79
    add-int/lit8 v6, v0, -0x1

    iput v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 81
    :cond_3
    iget-object v6, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 82
    const/4 v3, 0x1

    .line 91
    :cond_4
    :goto_2
    iget-object v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 83
    :cond_5
    iget-boolean v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    if-eqz v6, :cond_4

    if-gez v0, :cond_4

    .line 84
    new-instance v6, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v6, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 85
    iget-object v6, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v2, v6, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 86
    iput-object p1, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 87
    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 88
    iget-object v6, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v6, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 89
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/concurrent/Queue$Predicate",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    .local p1, "predicate":Lmiui/util/concurrent/Queue$Predicate;, "Lmiui/util/concurrent/Queue$Predicate<TT;>;"
    const/4 v3, 0x0

    .line 138
    if-nez p1, :cond_0

    move v1, v3

    .line 154
    :goto_0
    return v1

    .line 142
    :cond_0
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "lock":I
    :goto_1
    if-nez v0, :cond_1

    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 142
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 146
    :cond_2
    const/4 v1, 0x0

    .line 147
    .local v1, "ret":I
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .local v2, "s":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    :goto_2
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v2, v4, :cond_4

    .line 148
    iget-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    invoke-interface {p1, v4}, Lmiui/util/concurrent/Queue$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    const/4 v4, 0x0

    iput-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 147
    :cond_3
    iget-object v2, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_2

    .line 153
    :cond_4
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue;, "Lmiui/util/concurrent/ConcurrentRingQueue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 116
    if-nez p1, :cond_0

    move v1, v3

    .line 133
    :goto_0
    return v1

    .line 120
    :cond_0
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "lock":I
    :goto_1
    if-nez v0, :cond_1

    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 120
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 124
    :cond_2
    const/4 v1, 0x0

    .line 125
    .local v1, "ret":Z
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .local v2, "s":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    :goto_2
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v2, v4, :cond_3

    .line 126
    iget-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    const/4 v4, 0x0

    iput-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 128
    const/4 v1, 0x1

    .line 132
    :cond_3
    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v2, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_2
.end method
