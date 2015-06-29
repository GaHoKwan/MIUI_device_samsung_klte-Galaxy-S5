.class Lmiui/os/DropBoxManager$2;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/os/DropBoxManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/os/DropBoxManager;


# direct methods
.method constructor <init>(Lmiui/os/DropBoxManager;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lmiui/os/DropBoxManager$2;->this$0:Lmiui/os/DropBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 281
    invoke-static {p2}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/internal/server/IDropBoxManagerService;

    move-result-object v0

    .line 283
    .local v0, "dropBoxService":Lcom/miui/internal/server/IDropBoxManagerService;
    :try_start_0
    iget-object v3, p0, Lmiui/os/DropBoxManager$2;->this$0:Lmiui/os/DropBoxManager;

    # getter for: Lmiui/os/DropBoxManager;->mEntries:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v3}, Lmiui/os/DropBoxManager;->access$100(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/os/DropBoxManager$Entry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .local v2, "entry":Lmiui/os/DropBoxManager$Entry;
    :goto_0
    if-eqz v2, :cond_0

    .line 286
    :try_start_1
    invoke-interface {v0, v2}, Lcom/miui/internal/server/IDropBoxManagerService;->add(Lmiui/os/DropBoxManager$Entry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :try_start_2
    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 290
    iget-object v3, p0, Lmiui/os/DropBoxManager$2;->this$0:Lmiui/os/DropBoxManager;

    # getter for: Lmiui/os/DropBoxManager;->mEntries:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v3}, Lmiui/os/DropBoxManager;->access$100(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Lmiui/os/DropBoxManager$Entry;
    check-cast v2, Lmiui/os/DropBoxManager$Entry;

    .restart local v2    # "entry":Lmiui/os/DropBoxManager$Entry;
    goto :goto_0

    .line 288
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->close()V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    .end local v2    # "entry":Lmiui/os/DropBoxManager$Entry;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DropBoxManager"

    const-string v4, "Call remote method \'add\' failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 292
    .restart local v2    # "entry":Lmiui/os/DropBoxManager$Entry;
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 300
    return-void
.end method
