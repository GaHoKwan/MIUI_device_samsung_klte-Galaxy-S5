.class Lmiui/payment/PaymentManager$PaymentCallback;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/payment/PaymentManager$PaymentManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/payment/PaymentManager$PaymentManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mPaymentId:Ljava/lang/String;

.field private mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

.field private mServiceId:Ljava/lang/String;

.field final synthetic this$0:Lmiui/payment/PaymentManager;


# direct methods
.method public constructor <init>(Lmiui/payment/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V
    .locals 0
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "paymentId"    # Ljava/lang/String;
    .param p4, "paymentListener"    # Lmiui/payment/PaymentManager$PaymentListener;

    .prologue
    .line 396
    iput-object p1, p0, Lmiui/payment/PaymentManager$PaymentCallback;->this$0:Lmiui/payment/PaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mServiceId:Ljava/lang/String;

    .line 398
    iput-object p3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    .line 399
    iput-object p4, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    .line 400
    return-void
.end method


# virtual methods
.method public run(Lmiui/payment/PaymentManager$PaymentManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Lmiui/payment/PaymentManager$PaymentManagerFuture;, "Lmiui/payment/PaymentManager$PaymentManagerFuture<Landroid/os/Bundle;>;"
    const/4 v7, 0x0

    .line 404
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    if-nez v2, :cond_0

    .line 425
    :goto_0
    return-void

    .line 408
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lmiui/payment/PaymentManager$PaymentManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 409
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 410
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lmiui/payment/PaymentManager$PaymentListener;->onSuccess(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/cloud/exception/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/cloud/exception/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/payment/exception/PaymentServiceFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :goto_1
    iput-object v7, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    goto :goto_0

    .line 412
    :cond_1
    :try_start_1
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "error"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmiui/cloud/exception/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmiui/cloud/exception/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lmiui/payment/exception/PaymentServiceFailureException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 414
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    iput-object v7, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    goto :goto_0

    .line 416
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 417
    .local v0, "e":Lmiui/cloud/exception/OperationCancelledException;
    :try_start_3
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v0}, Lmiui/cloud/exception/OperationCancelledException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    iput-object v7, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    goto :goto_0

    .line 418
    .end local v0    # "e":Lmiui/cloud/exception/OperationCancelledException;
    :catch_2
    move-exception v0

    .line 419
    .local v0, "e":Lmiui/cloud/exception/AuthenticationFailureException;
    :try_start_4
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v0}, Lmiui/cloud/exception/AuthenticationFailureException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 423
    iput-object v7, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    goto :goto_0

    .line 420
    .end local v0    # "e":Lmiui/cloud/exception/AuthenticationFailureException;
    :catch_3
    move-exception v0

    .line 421
    .local v0, "e":Lmiui/payment/exception/PaymentServiceFailureException;
    :try_start_5
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0}, Lmiui/payment/exception/PaymentServiceFailureException;->getError()I

    move-result v4

    invoke-virtual {v0}, Lmiui/payment/exception/PaymentServiceFailureException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lmiui/payment/exception/PaymentServiceFailureException;->getErrorResult()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 423
    iput-object v7, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    goto :goto_0

    .end local v0    # "e":Lmiui/payment/exception/PaymentServiceFailureException;
    :catchall_0
    move-exception v2

    iput-object v7, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    throw v2
.end method
