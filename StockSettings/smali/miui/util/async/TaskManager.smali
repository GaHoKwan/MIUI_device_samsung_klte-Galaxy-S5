.class public Lmiui/util/async/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = -0x1

.field private static final DEFAULT_QUEUE_SIZE:I = 0xa

.field private static final DEFAULT_THREAD_SIZE:I = -0x1

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lmiui/util/async/TaskManager;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_DEBUG:Z = false

.field static final LOG_ERROR:Z = true

.field static final LOG_INFO:Z = false

.field static final LOG_VERBOSE:Z = false

.field static final LOG_WARNING:Z = true

.field static final TAG:Ljava/lang/String; = "async"


# instance fields
.field private mCache:Lmiui/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

.field private mFinalizeGuardian:Ljava/lang/Object;

.field private final mQueue:Lmiui/util/async/TaskQueue;

.field private volatile mShutdown:Z

.field private mTaskThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/async/TaskThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lmiui/util/async/TaskManager$1;

    invoke-direct {v0}, Lmiui/util/async/TaskManager$1;-><init>()V

    sput-object v0, Lmiui/util/async/TaskManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 125
    const/16 v0, 0xa

    invoke-direct {p0, v0, v1, v1}, Lmiui/util/async/TaskManager;-><init>(III)V

    .line 126
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "queueSize"    # I
    .param p2, "threadCount"    # I
    .param p3, "cacheSize"    # I

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v1, Lmiui/util/async/TaskManager$2;

    invoke-direct {v1, p0}, Lmiui/util/async/TaskManager$2;-><init>(Lmiui/util/async/TaskManager;)V

    iput-object v1, p0, Lmiui/util/async/TaskManager;->mFinalizeGuardian:Ljava/lang/Object;

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    .line 142
    new-instance v1, Lmiui/util/async/TaskQueue;

    invoke-direct {v1, p0, p1}, Lmiui/util/async/TaskQueue;-><init>(Lmiui/util/async/TaskManager;I)V

    iput-object v1, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    .line 144
    if-gez p2, :cond_0

    .line 145
    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result p2

    .line 146
    if-gtz p2, :cond_0

    .line 147
    const/4 p2, 0x4

    .line 151
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 153
    iget-object v1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    new-instance v2, Lmiui/util/async/TaskThread;

    iget-object v3, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-direct {v2, p0, v3, v0}, Lmiui/util/async/TaskThread;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/TaskQueue;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskThread;

    invoke-virtual {v1}, Lmiui/util/async/TaskThread;->start()V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    new-instance v1, Lmiui/util/async/TaskInfoDeliverer;

    invoke-direct {v1, p0}, Lmiui/util/async/TaskInfoDeliverer;-><init>(Lmiui/util/async/TaskManager;)V

    iput-object v1, p0, Lmiui/util/async/TaskManager;->mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

    .line 158
    new-instance v1, Lmiui/util/cache/LruCache;

    invoke-direct {v1, p3}, Lmiui/util/cache/LruCache;-><init>(I)V

    iput-object v1, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    .line 159
    return-void
.end method

.method public static getDefault()Lmiui/util/async/TaskManager;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lmiui/util/async/TaskManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    return-object v0
.end method


# virtual methods
.method public add(Lmiui/util/async/Task;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    const/4 v4, 0x0

    .line 219
    iget-boolean v2, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "async"

    const-string v3, "Cannot add task into a shut down task manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Lmiui/util/async/Task;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already added into task manager and not finish yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "message":Ljava/lang/String;
    const-string v2, "async"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v2

    sget-object v3, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    if-eq v2, v3, :cond_2

    .line 235
    invoke-virtual {p1}, Lmiui/util/async/Task;->restart()Z

    move-result v2

    if-nez v2, :cond_2

    .line 236
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status of task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not New, and cannot restart."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_2
    invoke-virtual {p1, p0}, Lmiui/util/async/Task;->setTaskManager(Lmiui/util/async/TaskManager;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 245
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has already added into task manager and not finish yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_3
    iget-object v2, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    if-eqz v2, :cond_4

    instance-of v2, p1, Lmiui/util/async/Cacheable;

    if-eqz v2, :cond_4

    .line 249
    iget-object v3, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    move-object v2, p1

    check-cast v2, Lmiui/util/async/Cacheable;

    invoke-interface {v2}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lmiui/util/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 250
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 254
    sget-object v2, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v2, v4}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 255
    sget-object v2, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v2, v4}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 256
    sget-object v2, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v2, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 261
    .end local v1    # "result":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Lmiui/util/async/Task;->getPriority()Lmiui/util/async/Task$Priority;

    move-result-object v2

    sget-object v3, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    if-ne v2, v3, :cond_5

    .line 265
    sget-object v2, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v2, v4}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 266
    invoke-static {p0, p1}, Lmiui/util/async/TaskThread;->runRealTimeTask(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto/16 :goto_0

    .line 268
    :cond_5
    iget-object v2, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v2, p1}, Lmiui/util/async/TaskQueue;->put(Lmiui/util/async/Task;)Z

    goto/16 :goto_0
.end method

.method getCache()Lmiui/util/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    return-object v0
.end method

.method isShutdown()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->pause()V

    .line 281
    return-void
.end method

.method postDelivery(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 1
    .param p2, "delivery"    # Lmiui/util/async/Task$Delivery;
    .param p3, "info"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task",
            "<*>;",
            "Lmiui/util/async/Task$Delivery;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/async/TaskInfoDeliverer;->postDeliver(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 364
    return-void
.end method

.method remove(Lmiui/util/async/Task;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0, p1}, Lmiui/util/async/TaskQueue;->remove(Lmiui/util/async/Task;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->resume()V

    .line 292
    return-void
.end method

.method public setCallbackThread(Z)V
    .locals 1
    .param p1, "mainThread"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

    invoke-virtual {v0, p1}, Lmiui/util/async/TaskInfoDeliverer;->setCallbackThread(Z)V

    .line 333
    return-void
.end method

.method public setMaxCache(I)V
    .locals 1
    .param p1, "cacheSize"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    invoke-interface {v0, p1}, Lmiui/util/cache/Cache;->setMaxSize(I)V

    .line 175
    return-void
.end method

.method public setThreadCount(I)V
    .locals 5
    .param p1, "threadCount"    # I

    .prologue
    .line 183
    iget-boolean v3, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    if-eqz v3, :cond_1

    .line 185
    const-string v3, "async"

    const-string v4, "Cannot add task into a shut down task manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    return-void

    .line 190
    :cond_1
    if-gez p1, :cond_2

    .line 191
    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result p1

    .line 192
    if-gtz p1, :cond_2

    .line 193
    const/4 p1, 0x4

    .line 197
    :cond_2
    iget-object v3, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    .local v0, "count":I
    if-le p1, v0, :cond_3

    .line 199
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 200
    new-instance v2, Lmiui/util/async/TaskThread;

    iget-object v3, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-direct {v2, p0, v3, v1}, Lmiui/util/async/TaskThread;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/TaskQueue;I)V

    .line 201
    .local v2, "t":Lmiui/util/async/TaskThread;
    invoke-virtual {v2}, Lmiui/util/async/TaskThread;->start()V

    .line 202
    iget-object v3, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "i":I
    .end local v2    # "t":Lmiui/util/async/TaskThread;
    :cond_3
    if-ge p1, v0, :cond_0

    .line 205
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-lt v1, p1, :cond_0

    .line 206
    iget-object v3, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/TaskThread;

    .line 207
    .restart local v2    # "t":Lmiui/util/async/TaskThread;
    invoke-virtual {v2}, Lmiui/util/async/TaskThread;->shutdown()V

    .line 208
    iget-object v3, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 205
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 304
    invoke-static {}, Lmiui/util/async/TaskManager;->getDefault()Lmiui/util/async/TaskManager;

    move-result-object v2

    if-eq p0, v2, :cond_1

    .line 309
    iget-boolean v2, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    if-nez v2, :cond_1

    .line 310
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    .line 311
    iget-object v2, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskThread;

    .line 312
    .local v1, "t":Lmiui/util/async/TaskThread;
    invoke-virtual {v1}, Lmiui/util/async/TaskThread;->shutdown()V

    goto :goto_0

    .line 314
    .end local v1    # "t":Lmiui/util/async/TaskThread;
    :cond_0
    iget-object v2, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 315
    iget-object v2, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    invoke-interface {v2}, Lmiui/util/cache/Cache;->clear()V

    .line 318
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
