.class public abstract Lmiui/util/async/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/Task$1;,
        Lmiui/util/async/Task$Delivery;,
        Lmiui/util/async/Task$Status;,
        Lmiui/util/async/Task$Priority;,
        Lmiui/util/async/Task$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/async/Task$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:Lmiui/util/async/Task$Priority;

.field private volatile mStatus:Lmiui/util/async/Task$Status;

.field private final mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSuccessorTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmiui/util/async/Task",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mTaskManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/util/async/TaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    sget-object v0, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    invoke-direct {p0, v0}, Lmiui/util/async/Task;-><init>(Lmiui/util/async/Task$Priority;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lmiui/util/async/Task$Priority;)V
    .locals 2
    .param p1, "priority"    # Lmiui/util/async/Task$Priority;

    .prologue
    .line 214
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    sget-object v0, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    .line 216
    iput-object p1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    .line 217
    return-void
.end method

.method private canRestart()Z
    .locals 7

    .prologue
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    const/4 v2, 0x0

    .line 375
    iget-object v3, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v4, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-eq v3, v4, :cond_0

    .line 376
    iget-object v3, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 377
    :try_start_0
    iget-object v4, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v5, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 379
    const-string v4, "async"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is DONE but successor not done yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    monitor-exit v3

    .line 395
    :cond_0
    :goto_0
    return v2

    .line 384
    :cond_1
    iget-object v4, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-eqz v4, :cond_3

    .line 385
    iget-object v4, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task;

    .line 386
    .local v1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    invoke-direct {v1}, Lmiui/util/async/Task;->canRestart()Z

    move-result v4

    if-nez v4, :cond_2

    .line 387
    monitor-exit v3

    goto :goto_0

    .line 391
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private enqueueSuccessorTasks(Lmiui/util/async/TaskManager;)V
    .locals 5
    .param p1, "tm"    # Lmiui/util/async/TaskManager;

    .prologue
    .line 354
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v3, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 355
    :try_start_0
    iget-object v2, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task;

    .line 361
    .local v1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    invoke-virtual {p1, v1}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_0

    .line 366
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 365
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 366
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    return-void
.end method

.method private onCanceledInternal(Lmiui/util/async/TaskManager;)V
    .locals 3
    .param p1, "tm"    # Lmiui/util/async/TaskManager;

    .prologue
    .line 474
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 476
    .local v1, "listener":Lmiui/util/async/Task$Listener;
    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onCanceled(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_0

    .line 479
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/util/async/Task$Listener;
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onCanceled(Lmiui/util/async/TaskManager;)V

    .line 480
    return-void
.end method

.method private onExceptionInternal(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 522
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 523
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 524
    .local v1, "listener":Lmiui/util/async/Task$Listener;
    invoke-interface {v1, p1, p0, p2}, Lmiui/util/async/Task$Listener;->onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V

    goto :goto_0

    .line 527
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/util/async/Task$Listener;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/util/async/Task;->onException(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    .line 528
    return-void
.end method

.method private onFinalizeInternal(Lmiui/util/async/TaskManager;)V
    .locals 3
    .param p1, "tm"    # Lmiui/util/async/TaskManager;

    .prologue
    .line 536
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 538
    .local v1, "listener":Lmiui/util/async/Task$Listener;
    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_0

    .line 541
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/util/async/Task$Listener;
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onFinalize(Lmiui/util/async/TaskManager;)V

    .line 542
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    .line 543
    return-void
.end method

.method private onPrepareInternal(Lmiui/util/async/TaskManager;)V
    .locals 3
    .param p1, "tm"    # Lmiui/util/async/TaskManager;

    .prologue
    .line 551
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 552
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 553
    .local v1, "listener":Lmiui/util/async/Task$Listener;
    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_0

    .line 556
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/util/async/Task$Listener;
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onPrepare(Lmiui/util/async/TaskManager;)V

    .line 557
    return-void
.end method

.method private onProgressInternal(Lmiui/util/async/TaskManager;II)V
    .locals 3
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p2, "max"    # I
    .param p3, "current"    # I

    .prologue
    .line 490
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 492
    .local v1, "listener":Lmiui/util/async/Task$Listener;
    invoke-interface {v1, p1, p0, p2, p3}, Lmiui/util/async/Task$Listener;->onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V

    goto :goto_0

    .line 495
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/util/async/Task$Listener;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmiui/util/async/Task;->onProgress(Lmiui/util/async/TaskManager;II)V

    .line 496
    return-void
.end method

.method private onResultInternal(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 506
    iget-object v3, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 508
    .local v1, "listener":Lmiui/util/async/Task$Listener;
    invoke-interface {v1, p1, p0, p2}, Lmiui/util/async/Task$Listener;->onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 509
    .local v2, "r":Ljava/lang/Object;, "TT;"
    move-object p2, v2

    .line 510
    goto :goto_0

    .line 512
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/util/async/Task$Listener;
    .end local v2    # "r":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/util/async/Task;->onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V

    .line 513
    return-void
.end method

.method private postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 4
    .param p1, "delivery"    # Lmiui/util/async/Task$Delivery;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 406
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v1, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    .local v0, "tm":Lmiui/util/async/TaskManager;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/async/TaskManager;->postDelivery(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 414
    :goto_0
    return-void

    .line 410
    :cond_0
    const-string v1, "async"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task has delivery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but has no task manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final addListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;
    .locals 1
    .param p1, "listener"    # Lmiui/util/async/Task$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task$Listener;",
            ")",
            "Lmiui/util/async/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    .line 607
    :cond_0
    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    return-object p0
.end method

.method public final cancel()V
    .locals 3

    .prologue
    .line 629
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-eq v1, v2, :cond_1

    .line 634
    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v1, v2, :cond_0

    .line 635
    iget-object v1, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    .line 636
    .local v0, "tm":Lmiui/util/async/TaskManager;
    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->remove(Lmiui/util/async/Task;)Z

    .line 641
    .end local v0    # "tm":Lmiui/util/async/TaskManager;
    :cond_0
    sget-object v1, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 643
    :cond_1
    return-void
.end method

.method final deliver(Lmiui/util/async/TaskManager;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 5
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p2, "delivery"    # Lmiui/util/async/Task$Delivery;
    .param p3, "info"    # Ljava/lang/Object;

    .prologue
    .line 436
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    sget-object v2, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Delivery:[I

    invoke-virtual {p2}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 466
    .end local p3    # "info":Ljava/lang/Object;
    :goto_0
    return-void

    .line 438
    .restart local p3    # "info":Ljava/lang/Object;
    :pswitch_0
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->onPrepareInternal(Lmiui/util/async/TaskManager;)V

    goto :goto_0

    .line 441
    :pswitch_1
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->onFinalizeInternal(Lmiui/util/async/TaskManager;)V

    goto :goto_0

    .line 444
    :pswitch_2
    if-nez p3, :cond_0

    .line 445
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->onCanceledInternal(Lmiui/util/async/TaskManager;)V

    goto :goto_0

    .line 446
    :cond_0
    instance-of v2, p3, Lmiui/util/async/TaskExecutingException;

    if-eqz v2, :cond_1

    .line 447
    check-cast p3, Lmiui/util/async/TaskExecutingException;

    .end local p3    # "info":Ljava/lang/Object;
    invoke-virtual {p3}, Lmiui/util/async/TaskExecutingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {p0, p1, v2}, Lmiui/util/async/Task;->onExceptionInternal(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    goto :goto_0

    .line 450
    .restart local p3    # "info":Ljava/lang/Object;
    :cond_1
    move-object v1, p3

    .line 451
    .local v1, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-direct {p0, p1, v1}, Lmiui/util/async/Task;->onResultInternal(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V

    .line 452
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->enqueueSuccessorTasks(Lmiui/util/async/TaskManager;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "async"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " return result cannot cast to expectation class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0, p1, v0}, Lmiui/util/async/Task;->onExceptionInternal(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :pswitch_3
    move-object v2, p3

    .line 463
    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    check-cast p3, [I

    .end local p3    # "info":Ljava/lang/Object;
    check-cast p3, [I

    const/4 v3, 0x1

    aget v3, p3, v3

    invoke-direct {p0, p1, v2, v3}, Lmiui/util/async/Task;->onProgressInternal(Lmiui/util/async/TaskManager;II)V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final depends(Lmiui/util/async/Task;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    .local p1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v2, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 653
    :try_start_0
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p1, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 656
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p1, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    .line 659
    :cond_0
    iget-object v1, p1, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 671
    :goto_0
    monitor-exit v2

    .line 672
    return-void

    .line 662
    :cond_1
    iget-object v1, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    .line 663
    .local v0, "tm":Lmiui/util/async/TaskManager;
    if-eqz v0, :cond_2

    .line 664
    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_0

    .line 671
    .end local v0    # "tm":Lmiui/util/async/TaskManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 667
    .restart local v0    # "tm":Lmiui/util/async/TaskManager;
    :cond_2
    :try_start_1
    const-string v1, "async"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is done but has no task manager to execute task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public abstract doLoad()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPriority()Lmiui/util/async/Task$Priority;
    .locals 1

    .prologue
    .line 678
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v0, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    return-object v0
.end method

.method public final getStatus()Lmiui/util/async/Task$Status;
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    return-object v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 300
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCanceled(Lmiui/util/async/TaskManager;)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;

    .prologue
    .line 765
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    return-void
.end method

.method public onException(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 783
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    return-void
.end method

.method public onFinalize(Lmiui/util/async/TaskManager;)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;

    .prologue
    .line 804
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;

    .prologue
    .line 757
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    return-void
.end method

.method public onProgress(Lmiui/util/async/TaskManager;II)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p2, "max"    # I
    .param p3, "current"    # I

    .prologue
    .line 793
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final publishProgress(II)V
    .locals 3
    .param p1, "max"    # I
    .param p2, "current"    # I

    .prologue
    .line 593
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    sget-object v0, Lmiui/util/async/Task$Delivery;->Progress:Lmiui/util/async/Task$Delivery;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method public final removeListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;
    .locals 1
    .param p1, "listener"    # Lmiui/util/async/Task$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task$Listener;",
            ")",
            "Lmiui/util/async/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    return-object p0
.end method

.method public final restart()Z
    .locals 7

    .prologue
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 714
    invoke-direct {p0}, Lmiui/util/async/Task;->canRestart()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 715
    iget-object v5, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v6, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v5, v6, :cond_1

    .line 716
    iget-object v5, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/TaskManager;

    .line 717
    .local v2, "tm":Lmiui/util/async/TaskManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lmiui/util/async/TaskManager;->remove(Lmiui/util/async/Task;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 738
    .end local v2    # "tm":Lmiui/util/async/TaskManager;
    :cond_0
    :goto_0
    return v3

    .line 722
    :cond_1
    iget-object v5, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v6, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-eq v5, v6, :cond_0

    .line 726
    iget-object v5, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 727
    :try_start_0
    iget-object v3, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-eqz v3, :cond_2

    .line 728
    iget-object v3, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task;

    .line 729
    .local v1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    invoke-virtual {v1}, Lmiui/util/async/Task;->restart()Z

    goto :goto_1

    .line 733
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 732
    :cond_2
    :try_start_1
    iget-object v3, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 733
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    sget-object v3, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v3, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    move v3, v4

    .line 736
    goto :goto_0
.end method

.method public final setPriority(Lmiui/util/async/Task$Priority;)Lmiui/util/async/Task;
    .locals 3
    .param p1, "priority"    # Lmiui/util/async/Task$Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task$Priority;",
            ")",
            "Lmiui/util/async/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    if-eq v1, p1, :cond_2

    .line 688
    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v1, v2, :cond_0

    .line 689
    iget-object v1, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    .line 690
    .local v0, "tm":Lmiui/util/async/TaskManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->remove(Lmiui/util/async/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    iput-object p1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    .line 692
    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    .line 693
    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    .line 697
    .end local v0    # "tm":Lmiui/util/async/TaskManager;
    :cond_0
    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v1, v2, :cond_1

    .line 698
    iget-object v1, p0, Lmiui/util/async/Task;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0, v1}, Lmiui/util/async/Task;->setThread(Ljava/lang/Thread;)V

    .line 701
    :cond_1
    iput-object p1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    .line 704
    :cond_2
    return-object p0
.end method

.method final setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V
    .locals 3
    .param p1, "status"    # Lmiui/util/async/Task$Status;
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    const/4 v2, 0x0

    .line 226
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    :pswitch_0
    iput-object p1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    .line 287
    :goto_1
    return-void

    .line 228
    :pswitch_1
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    invoke-virtual {p1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 238
    const-string v0, "async"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error status change=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 230
    :pswitch_2
    sget-object v0, Lmiui/util/async/Task$Delivery;->Prepare:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :pswitch_3
    sget-object v0, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 234
    sget-object v0, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :pswitch_4
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    invoke-virtual {p1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 253
    const-string v0, "async"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error status change=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :pswitch_5
    sget-object v0, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 249
    sget-object v0, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :pswitch_6
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    invoke-virtual {p1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 270
    :pswitch_7
    const-string v0, "async"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error status change=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 261
    :pswitch_8
    sget-object v0, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, p2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 262
    sget-object v0, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 265
    :pswitch_9
    sget-object v0, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 266
    sget-object v0, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 278
    :pswitch_a
    const-string v0, "async"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error status change=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_1
    .end packed-switch

    .line 228
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 244
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 259
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method final setTaskManager(Lmiui/util/async/TaskManager;)Z
    .locals 1
    .param p1, "tm"    # Lmiui/util/async/TaskManager;

    .prologue
    .line 341
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    .line 343
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setThread(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 319
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    iput-object p1, p0, Lmiui/util/async/Task;->mThread:Ljava/lang/Thread;

    .line 320
    if-eqz p1, :cond_0

    .line 321
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    iget-object v1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    invoke-virtual {v1}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 323
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    .line 326
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    .line 330
    :pswitch_2
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 564
    .local p0, "this":Lmiui/util/async/Task;, "Lmiui/util/async/Task<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {p0}, Lmiui/util/async/Task;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 568
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    :cond_0
    const-string v2, ": Status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-object v2, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    const-string v2, ", Priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v2, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
