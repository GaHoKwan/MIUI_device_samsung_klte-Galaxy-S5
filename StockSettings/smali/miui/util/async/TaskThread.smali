.class Lmiui/util/async/TaskThread;
.super Ljava/lang/Thread;
.source "TaskThread.java"


# instance fields
.field private final mQueue:Lmiui/util/async/TaskQueue;

.field private volatile mShutdown:Z

.field private final mTaskManager:Lmiui/util/async/TaskManager;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;Lmiui/util/async/TaskQueue;I)V
    .locals 2
    .param p1, "taskManager"    # Lmiui/util/async/TaskManager;
    .param p2, "queue"    # Lmiui/util/async/TaskQueue;
    .param p3, "id"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    iput-object p1, p0, Lmiui/util/async/TaskThread;->mTaskManager:Lmiui/util/async/TaskManager;

    .line 40
    iput-object p2, p0, Lmiui/util/async/TaskThread;->mQueue:Lmiui/util/async/TaskQueue;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/TaskThread;->mShutdown:Z

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskThread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/util/async/TaskThread;->setName(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/async/TaskManager;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Lmiui/util/async/Task;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lmiui/util/async/TaskThread;->runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    return-void
.end method

.method public static runRealTimeTask(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 2
    .param p0, "taskManager"    # Lmiui/util/async/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    new-instance v0, Lmiui/util/async/TaskThread$1;

    invoke-direct {v0, p0, p1}, Lmiui/util/async/TaskThread$1;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    .line 59
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "TaskThread-RealTime"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method private static runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .locals 9
    .param p0, "taskManager"    # Lmiui/util/async/TaskManager;
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Ljava/lang/Thread;",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    const/4 v8, 0x0

    .line 112
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 113
    sget-object v5, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    invoke-virtual {p2, v5, v8}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p2, p1}, Lmiui/util/async/Task;->setThread(Ljava/lang/Thread;)V

    .line 116
    const/4 v4, 0x0

    .line 118
    .local v4, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p2}, Lmiui/util/async/Task;->doLoad()Ljava/lang/Object;

    move-result-object v4

    .line 124
    sget-object v6, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-nez v4, :cond_2

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v7, "result is null"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, v6, v5}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v4    # "result":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0}, Lmiui/util/async/TaskManager;->getCache()Lmiui/util/cache/Cache;

    move-result-object v0

    .line 135
    .local v0, "cache":Lmiui/util/cache/Cache;, "Lmiui/util/cache/Cache<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    instance-of v5, p2, Lmiui/util/async/Cacheable;

    if-eqz v5, :cond_0

    move-object v1, p2

    .line 136
    check-cast v1, Lmiui/util/async/Cacheable;

    .line 137
    .local v1, "cacheable":Lmiui/util/async/Cacheable;
    invoke-interface {v1}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 143
    invoke-interface {v1}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4}, Lmiui/util/async/Cacheable;->sizeOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5, v4, v6}, Lmiui/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 147
    .end local v1    # "cacheable":Lmiui/util/async/Cacheable;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v8}, Lmiui/util/async/Task;->setThread(Ljava/lang/Thread;)V

    .line 149
    .end local v0    # "cache":Lmiui/util/cache/Cache;, "Lmiui/util/cache/Cache<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .restart local v4    # "result":Ljava/lang/Object;
    :cond_2
    move-object v5, v4

    .line 124
    goto :goto_0

    .line 125
    .end local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    new-instance v6, Lmiui/util/async/TaskExecutingException;

    invoke-direct {v6, v2}, Lmiui/util/async/TaskExecutingException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p2, v5, v6}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/util/async/TaskThread;->mQueue:Lmiui/util/async/TaskQueue;

    .line 77
    .local v0, "queue":Lmiui/util/async/TaskQueue;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lmiui/util/async/TaskThread;->mShutdown:Z

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->get()Lmiui/util/async/Task;

    move-result-object v1

    .line 83
    .local v1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    if-eqz v1, :cond_0

    .line 89
    iget-object v2, p0, Lmiui/util/async/TaskThread;->mTaskManager:Lmiui/util/async/TaskManager;

    invoke-static {v2, p0, v1}, Lmiui/util/async/TaskThread;->runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    .line 90
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lmiui/util/async/TaskThread;->setPriority(I)V

    goto :goto_0

    .line 95
    .end local v1    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->get()Lmiui/util/async/Task;

    move-result-object v1

    .line 97
    .restart local v1    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    if-eqz v1, :cond_1

    .line 99
    sget-object v2, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    .end local v1    # "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :cond_2
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/TaskThread;->mShutdown:Z

    .line 68
    invoke-virtual {p0}, Lmiui/util/async/TaskThread;->interrupt()V

    .line 69
    return-void
.end method
