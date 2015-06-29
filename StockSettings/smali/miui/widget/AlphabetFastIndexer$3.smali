.class Lmiui/widget/AlphabetFastIndexer$3;
.super Landroid/os/Handler;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 778
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 780
    :pswitch_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # getter for: Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$300(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # getter for: Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$300(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 778
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
