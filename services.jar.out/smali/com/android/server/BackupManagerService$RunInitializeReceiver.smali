.class Lcom/android/server/BackupManagerService$RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunInitializeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BackupManagerService;
    .param p2, "x1"    # Lcom/android/server/BackupManagerService$1;

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1046
    const-string v1, "android.app.backup.intent.INIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1048
    :try_start_0
    const-string v1, "BackupManagerService"

    const-string v3, "Running a device init"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1054
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1055
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1056
    monitor-exit v2

    .line 1058
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1056
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
