.class Lmiui/payment/PaymentManager$4;
.super Lmiui/payment/PaymentManager$PmsTask;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/payment/PaymentManager;->internalGotoMiliCenter(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/payment/PaymentManager;


# direct methods
.method constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 335
    iput-object p1, p0, Lmiui/payment/PaymentManager$4;->this$0:Lmiui/payment/PaymentManager;

    invoke-direct {p0, p1, p2}, Lmiui/payment/PaymentManager$PmsTask;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$4;->getService()Lmiui/payment/IPaymentManagerService;

    move-result-object v0

    .line 339
    .local v0, "service":Lmiui/payment/IPaymentManagerService;
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$4;->getResponse()Lmiui/payment/IPaymentManagerResponse;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmiui/payment/IPaymentManagerService;->showMiliCenter(Lmiui/payment/IPaymentManagerResponse;Landroid/accounts/Account;)V

    .line 340
    return-void
.end method
