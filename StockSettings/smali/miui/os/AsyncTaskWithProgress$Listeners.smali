.class Lmiui/os/AsyncTaskWithProgress$Listeners;
.super Ljava/lang/Object;
.source "AsyncTaskWithProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listeners"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/os/AsyncTaskWithProgress;


# direct methods
.method private constructor <init>(Lmiui/os/AsyncTaskWithProgress;)V
    .locals 0

    .prologue
    .line 250
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress$Listeners;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>.Listeners;"
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiui/os/AsyncTaskWithProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/os/AsyncTaskWithProgress;
    .param p2, "x1"    # Lmiui/os/AsyncTaskWithProgress$1;

    .prologue
    .line 250
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress$Listeners;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>.Listeners;"
    invoke-direct {p0, p1}, Lmiui/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiui/os/AsyncTaskWithProgress;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 269
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress$Listeners;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>.Listeners;"
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lmiui/os/AsyncTaskWithProgress$Listeners;->onClick(Landroid/content/DialogInterface;I)V

    .line 270
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 256
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress$Listeners;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>.Listeners;"
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$100(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$100(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 258
    .local v0, "d":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 259
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiui/os/AsyncTaskWithProgress;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/os/AsyncTaskWithProgress;->cancel(Z)Z

    .line 262
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_0
    return-void
.end method
