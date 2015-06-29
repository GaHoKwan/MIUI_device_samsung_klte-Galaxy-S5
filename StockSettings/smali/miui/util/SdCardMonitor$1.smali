.class Lmiui/util/SdCardMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SdCardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/SdCardMonitor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/SdCardMonitor;


# direct methods
.method constructor <init>(Lmiui/util/SdCardMonitor;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    .line 49
    .local v0, "mounted":Z
    iget-object v1, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    # getter for: Lmiui/util/SdCardMonitor;->mMounted:Ljava/lang/Boolean;
    invoke-static {v1}, Lmiui/util/SdCardMonitor;->access$100(Lmiui/util/SdCardMonitor;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    # getter for: Lmiui/util/SdCardMonitor;->mMounted:Ljava/lang/Boolean;
    invoke-static {v1}, Lmiui/util/SdCardMonitor;->access$100(Lmiui/util/SdCardMonitor;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 50
    :cond_0
    iget-object v1, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lmiui/util/SdCardMonitor;->mMounted:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lmiui/util/SdCardMonitor;->access$102(Lmiui/util/SdCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 51
    iget-object v1, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    # invokes: Lmiui/util/SdCardMonitor;->notifyMountStatus(Z)V
    invoke-static {v1, v0}, Lmiui/util/SdCardMonitor;->access$200(Lmiui/util/SdCardMonitor;Z)V

    .line 53
    :cond_1
    return-void
.end method
