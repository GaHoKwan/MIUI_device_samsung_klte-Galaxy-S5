.class Lcom/miui/internal/app/AlertControllerImpl$1;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/AlertControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$000(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$100(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$100(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 140
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$700(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/miui/internal/app/AlertControllerImpl;->access$600(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$200(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$300(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$300(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$400(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
