.class Lmiui/util/async/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Lmiui/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/TaskQueue$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue",
        "<",
        "Lmiui/util/async/Task",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final mHighQueue:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue",
            "<",
            "Lmiui/util/async/Task",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mLowQueue:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue",
            "<",
            "Lmiui/util/async/Task",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mNormalQueue:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue",
            "<",
            "Lmiui/util/async/Task",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mTaskManager:Lmiui/util/async/TaskManager;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;I)V
    .locals 3
    .param p1, "taskManager"    # Lmiui/util/async/TaskManager;
    .param p2, "capacity"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lmiui/util/async/TaskQueue;->mTaskManager:Lmiui/util/async/TaskManager;

    .line 58
    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {v0, p2, v1, v1}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    .line 59
    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {v0, p2, v1, v1}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    .line 60
    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {v0, p2, v1, v1}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    .line 61
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    return-void
.end method

.method private getTask()Lmiui/util/async/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/Task",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    .line 100
    .local v0, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    if-nez v0, :cond_0

    .line 101
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    check-cast v0, Lmiui/util/async/Task;

    .line 103
    .restart local v0    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 104
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    check-cast v0, Lmiui/util/async/Task;

    .line 106
    .restart local v0    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :cond_1
    return-object v0
.end method


# virtual methods
.method public clear()I
    .locals 4

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "count":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-direct {p0}, Lmiui/util/async/TaskQueue;->getTask()Lmiui/util/async/Task;

    move-result-object v1

    .line 197
    .local v1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    invoke-virtual {v1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v2

    sget-object v3, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v2, v3, :cond_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :cond_1
    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lmiui/util/async/TaskQueue;->get()Lmiui/util/async/Task;

    move-result-object v0

    return-object v0
.end method

.method public get()Lmiui/util/async/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/Task",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    iget-object v3, p0, Lmiui/util/async/TaskQueue;->mTaskManager:Lmiui/util/async/TaskManager;

    invoke-virtual {v3}, Lmiui/util/async/TaskManager;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 118
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 120
    :try_start_0
    iget-object v3, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    iget-object v3, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 128
    :try_start_1
    iget-object v4, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    :try_start_2
    iget-object v4, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    :cond_2
    invoke-direct {p0}, Lmiui/util/async/TaskQueue;->getTask()Lmiui/util/async/Task;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v3

    sget-object v4, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-ne v3, v4, :cond_0

    .line 142
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 154
    :goto_1
    return-object v2

    .line 131
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    iget-object v4, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 134
    monitor-exit v3

    goto :goto_1

    .line 137
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 146
    :cond_3
    iget-object v2, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    invoke-direct {p0}, Lmiui/util/async/TaskQueue;->getTask()Lmiui/util/async/Task;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v2

    sget-object v3, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v2, v3, :cond_3

    :cond_4
    move-object v2, v1

    .line 154
    goto :goto_1
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lmiui/util/async/Task;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/util/async/TaskQueue;->put(Lmiui/util/async/Task;)Z

    move-result v0

    return v0
.end method

.method public put(Lmiui/util/async/Task;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "value":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    const/4 v0, 0x0

    .line 74
    .local v0, "ret":Z
    sget-object v1, Lmiui/util/async/TaskQueue$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    invoke-virtual {p1}, Lmiui/util/async/Task;->getPriority()Lmiui/util/async/Task$Priority;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    :goto_0
    if-eqz v0, :cond_0

    .line 92
    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 95
    :cond_0
    return v0

    .line 76
    :pswitch_0
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    goto :goto_0

    .line 86
    :pswitch_3
    const-string v1, "async"

    const-string v2, "Realtime task must NOT be put in Queue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/concurrent/Queue$Predicate",
            "<",
            "Lmiui/util/async/Task",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "predicate":Lmiui/util/concurrent/Queue$Predicate;, "Lmiui/util/concurrent/Queue$Predicate<Lmiui/util/async/Task<*>;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no support for this method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lmiui/util/async/Task;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/util/async/TaskQueue;->remove(Lmiui/util/async/Task;)Z

    move-result v0

    return v0
.end method

.method public remove(Lmiui/util/async/Task;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "value":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    const/4 v0, 0x0

    .line 166
    .local v0, "ret":Z
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    :cond_0
    if-nez v0, :cond_1

    .line 172
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    :cond_1
    if-nez v0, :cond_2

    .line 175
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 178
    :cond_2
    return v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
