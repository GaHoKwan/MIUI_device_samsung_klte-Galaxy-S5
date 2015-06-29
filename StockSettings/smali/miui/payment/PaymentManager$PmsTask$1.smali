.class Lmiui/payment/PaymentManager$PmsTask$1;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/PaymentManager$PmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/payment/PaymentManager$PmsTask;


# direct methods
.method constructor <init>(Lmiui/payment/PaymentManager$PmsTask;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask$1;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 443
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$1;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    # getter for: Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lmiui/payment/PaymentManager$PmsTask;->access$000(Lmiui/payment/PaymentManager$PmsTask;)Landroid/app/Activity;

    move-result-object v0

    .line 444
    .local v0, "host":Landroid/app/Activity;
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$1;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-virtual {v1}, Lmiui/payment/PaymentManager$PmsTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$1;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    new-instance v2, Lmiui/cloud/exception/OperationCancelledException;

    const-string v3, "Operation has been cancelled because host activity has finished."

    invoke-direct {v2, v3}, Lmiui/cloud/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$1;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    iget-object v1, v1, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
