.class Lmiui/media/Mp3Recorder$EventHandler;
.super Landroid/os/Handler;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/Mp3Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/Mp3Recorder;


# direct methods
.method public constructor <init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 538
    iput-object p1, p0, Lmiui/media/Mp3Recorder$EventHandler;->this$0:Lmiui/media/Mp3Recorder;

    .line 539
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 540
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 544
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 555
    return-void

    .line 546
    :pswitch_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$EventHandler;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lmiui/media/Mp3Recorder$EventHandler;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$EventHandler;->this$0:Lmiui/media/Mp3Recorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lmiui/media/Mp3Recorder$RecordingErrorListener;->onError(Lmiui/media/Mp3Recorder;I)V

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
