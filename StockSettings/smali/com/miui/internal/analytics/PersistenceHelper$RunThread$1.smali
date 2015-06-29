.class Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;
.super Landroid/os/Handler;
.source "PersistenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;


# direct methods
.method constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper$RunThread;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;->this$1:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;->this$1:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;

    iget-object v1, v0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->this$0:Lcom/miui/internal/analytics/PersistenceHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/internal/analytics/Event;

    # invokes: Lcom/miui/internal/analytics/PersistenceHelper;->writeEventImp(Lcom/miui/internal/analytics/Event;)V
    invoke-static {v1, v0}, Lcom/miui/internal/analytics/PersistenceHelper;->access$400(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/Event;)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
