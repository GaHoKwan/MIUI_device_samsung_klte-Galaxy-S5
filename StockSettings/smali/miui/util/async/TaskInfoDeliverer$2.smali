.class Lmiui/util/async/TaskInfoDeliverer$2;
.super Ljava/lang/Thread;
.source "TaskInfoDeliverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/TaskInfoDeliverer;->setCallbackThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/async/TaskInfoDeliverer;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskInfoDeliverer;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer$2;->this$0:Lmiui/util/async/TaskInfoDeliverer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 158
    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer$2;->this$0:Lmiui/util/async/TaskInfoDeliverer;

    new-instance v1, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;-><init>(Landroid/os/Looper;)V

    # setter for: Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;
    invoke-static {v0, v1}, Lmiui/util/async/TaskInfoDeliverer;->access$102(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;)Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    .line 159
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 160
    return-void
.end method
