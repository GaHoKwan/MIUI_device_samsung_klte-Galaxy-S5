.class Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 409
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 427
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 412
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$600(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V

    goto :goto_0

    .line 417
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$700(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
