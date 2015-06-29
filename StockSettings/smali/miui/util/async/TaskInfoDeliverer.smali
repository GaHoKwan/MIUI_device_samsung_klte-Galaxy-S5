.class Lmiui/util/async/TaskInfoDeliverer;
.super Ljava/lang/Object;
.source "TaskInfoDeliverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;,
        Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    }
.end annotation


# static fields
.field private static final TASK_DELIVERY_INFO_POOL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool",
            "<",
            "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

.field private mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue",
            "<",
            "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskManager:Lmiui/util/async/TaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$1;

    invoke-direct {v0}, Lmiui/util/async/TaskInfoDeliverer$1;-><init>()V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/util/async/TaskInfoDeliverer;->TASK_DELIVERY_INFO_POOL:Lmiui/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Lmiui/util/async/TaskManager;)V
    .locals 3
    .param p1, "taskManager"    # Lmiui/util/async/TaskManager;

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskManager:Lmiui/util/async/TaskManager;

    .line 132
    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    .line 134
    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v2, v2}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lmiui/util/async/TaskInfoDeliverer;)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/async/TaskInfoDeliverer;

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/util/async/TaskInfoDeliverer;->processAllDelivery()V

    return-void
.end method

.method static synthetic access$102(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;)Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;
    .locals 0
    .param p0, "x0"    # Lmiui/util/async/TaskInfoDeliverer;
    .param p1, "x1"    # Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    .prologue
    .line 20
    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    return-object p1
.end method

.method private processAllDelivery()V
    .locals 5

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v2}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v1}, Lmiui/util/concurrent/ConcurrentRingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v1}, Lmiui/util/concurrent/ConcurrentRingQueue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    .line 215
    .local v0, "ti":Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    if-eqz v0, :cond_0

    .line 220
    iget-object v1, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->task:Lmiui/util/async/Task;

    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskManager:Lmiui/util/async/TaskManager;

    iget-object v3, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->delivery:Lmiui/util/async/Task$Delivery;

    iget-object v4, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->info:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lmiui/util/async/Task;->deliver(Lmiui/util/async/TaskManager;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 221
    sget-object v1, Lmiui/util/async/TaskInfoDeliverer;->TASK_DELIVERY_INFO_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    .end local v0    # "ti":Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    :cond_1
    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v1, p0}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->post(Lmiui/util/async/TaskInfoDeliverer;)V

    .line 227
    :cond_2
    return-void
.end method


# virtual methods
.method public postDeliver(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 4
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
    .line 180
    .local p1, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    sget-object v2, Lmiui/util/async/TaskInfoDeliverer;->TASK_DELIVERY_INFO_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    .line 181
    .local v1, "ti":Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    iput-object p1, v1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->task:Lmiui/util/async/Task;

    .line 182
    iput-object p2, v1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->delivery:Lmiui/util/async/Task$Delivery;

    .line 183
    iput-object p3, v1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->info:Ljava/lang/Object;

    .line 185
    sget-object v2, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    if-ne p2, v2, :cond_0

    if-nez p3, :cond_0

    .line 191
    move-object v0, p1

    .line 192
    .local v0, "thisTask":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    new-instance v3, Lmiui/util/async/TaskInfoDeliverer$3;

    invoke-direct {v3, p0, v0}, Lmiui/util/async/TaskInfoDeliverer$3;-><init>(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/Task;)V

    invoke-virtual {v2, v3}, Lmiui/util/concurrent/ConcurrentRingQueue;->remove(Lmiui/util/concurrent/Queue$Predicate;)I

    .line 204
    .end local v0    # "thisTask":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :cond_0
    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v2, v1}, Lmiui/util/concurrent/ConcurrentRingQueue;->put(Ljava/lang/Object;)Z

    .line 205
    invoke-direct {p0}, Lmiui/util/async/TaskInfoDeliverer;->processAllDelivery()V

    .line 206
    return-void
.end method

.method public setCallbackThread(Z)V
    .locals 3
    .param p1, "mainThread"    # Z

    .prologue
    .line 149
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 150
    .local v0, "main":Landroid/os/Looper;
    if-eqz p1, :cond_1

    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v2}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 151
    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v2}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 152
    new-instance v2, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-direct {v2, v0}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v2}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 154
    new-instance v1, Lmiui/util/async/TaskInfoDeliverer$2;

    invoke-direct {v1, p0}, Lmiui/util/async/TaskInfoDeliverer$2;-><init>(Lmiui/util/async/TaskInfoDeliverer;)V

    .line 163
    .local v1, "t":Ljava/lang/Thread;
    const-string v2, "TaskInfoDeliverer-Callback"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
