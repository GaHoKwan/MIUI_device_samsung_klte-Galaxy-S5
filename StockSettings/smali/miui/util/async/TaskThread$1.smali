.class final Lmiui/util/async/TaskThread$1;
.super Ljava/lang/Thread;
.source "TaskThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/TaskThread;->runRealTimeTask(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Lmiui/util/async/Task;

.field final synthetic val$taskManager:Lmiui/util/async/TaskManager;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lmiui/util/async/TaskThread$1;->val$taskManager:Lmiui/util/async/TaskManager;

    iput-object p2, p0, Lmiui/util/async/TaskThread$1;->val$task:Lmiui/util/async/Task;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lmiui/util/async/TaskThread$1;->val$taskManager:Lmiui/util/async/TaskManager;

    iget-object v1, p0, Lmiui/util/async/TaskThread$1;->val$task:Lmiui/util/async/Task;

    # invokes: Lmiui/util/async/TaskThread;->runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    invoke-static {v0, p0, v1}, Lmiui/util/async/TaskThread;->access$000(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    .line 56
    return-void
.end method
