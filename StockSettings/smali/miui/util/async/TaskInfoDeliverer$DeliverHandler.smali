.class Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;
.super Landroid/os/Handler;
.source "TaskInfoDeliverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/TaskInfoDeliverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeliverHandler"
.end annotation


# static fields
.field static final CONTINUE:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/util/async/TaskInfoDeliverer;

    .line 88
    .local v0, "deliverer":Lmiui/util/async/TaskInfoDeliverer;
    # invokes: Lmiui/util/async/TaskInfoDeliverer;->processAllDelivery()V
    invoke-static {v0}, Lmiui/util/async/TaskInfoDeliverer;->access$000(Lmiui/util/async/TaskInfoDeliverer;)V

    .line 89
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public post(Lmiui/util/async/TaskInfoDeliverer;)V
    .locals 1
    .param p1, "deliverer"    # Lmiui/util/async/TaskInfoDeliverer;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    return-void
.end method
