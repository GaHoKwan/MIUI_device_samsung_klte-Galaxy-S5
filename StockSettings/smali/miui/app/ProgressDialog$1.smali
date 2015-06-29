.class Lmiui/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ProgressDialog;


# direct methods
.method constructor <init>(Lmiui/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 180
    iget-object v7, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v7}, Lmiui/app/ProgressDialog;->access$000(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    .line 181
    .local v4, "progress":I
    iget-object v7, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v7}, Lmiui/app/ProgressDialog;->access$000(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 183
    .local v1, "max":I
    iget-object v7, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v7}, Lmiui/app/ProgressDialog;->access$100(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 184
    int-to-double v8, v4

    int-to-double v10, v1

    div-double v2, v8, v10

    .line 185
    .local v2, "percent":D
    const/4 v0, 0x0

    .line 186
    .local v0, "endIndex":I
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 187
    .local v6, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v7}, Lmiui/app/ProgressDialog;->access$200(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 188
    iget-object v7, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v7}, Lmiui/app/ProgressDialog;->access$200(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 189
    iget-object v7, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v7}, Lmiui/app/ProgressDialog;->access$200(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 191
    :cond_0
    iget-object v7, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v7}, Lmiui/app/ProgressDialog;->access$100(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "progressPercent":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 193
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-virtual {v8}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/miui/internal/R$color;->progress_percent_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    const/16 v9, 0x22

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 199
    iget-object v7, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # invokes: Lmiui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V
    invoke-static {v7, v6}, Lmiui/app/ProgressDialog;->access$301(Lmiui/app/ProgressDialog;Ljava/lang/CharSequence;)V

    .line 201
    .end local v0    # "endIndex":I
    .end local v2    # "percent":D
    .end local v5    # "progressPercent":Ljava/lang/String;
    .end local v6    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_1
    return-void
.end method
