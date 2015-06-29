.class public abstract Lmiui/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/AsyncTaskWithProgress$1;,
        Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;,
        Lmiui/os/AsyncTaskWithProgress$Listeners;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;",
        "Ljava/lang/Integer;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final sAllTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/os/AsyncTaskWithProgress",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCancelable:Z

.field private mCurrentProgress:I

.field private volatile mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mIndeterminate:Z

.field private final mLisenters:Lmiui/os/AsyncTaskWithProgress$Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>.",
            "Listeners;"
        }
    .end annotation
.end field

.field private mMaxProgress:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageId:I

.field private mProgressStyle:I

.field private mTheme:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTheme:I

    .line 53
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitleId:I

    .line 54
    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 55
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessageId:I

    .line 56
    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 57
    iput-boolean v0, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 58
    iput-boolean v0, p0, Lmiui/os/AsyncTaskWithProgress;->mIndeterminate:Z

    .line 59
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMaxProgress:I

    .line 60
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mProgressStyle:I

    .line 61
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mCurrentProgress:I

    .line 62
    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 63
    new-instance v0, Lmiui/os/AsyncTaskWithProgress$Listeners;

    invoke-direct {v0, p0, v1}, Lmiui/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$1;)V

    iput-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mLisenters:Lmiui/os/AsyncTaskWithProgress$Listeners;

    .line 72
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragmentManager:Landroid/app/FragmentManager;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget v0, p0, Lmiui/os/AsyncTaskWithProgress;->mProgressStyle:I

    return v0
.end method

.method static synthetic access$102(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;
    .param p1, "x1"    # Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p1
.end method

.method static synthetic access$1100(Lmiui/os/AsyncTaskWithProgress;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget-boolean v0, p0, Lmiui/os/AsyncTaskWithProgress;->mIndeterminate:Z

    return v0
.end method

.method static synthetic access$1200(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMaxProgress:I

    return v0
.end method

.method static synthetic access$1300(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget v0, p0, Lmiui/os/AsyncTaskWithProgress;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/os/AsyncTaskWithProgress;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget-boolean v0, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    return v0
.end method

.method static synthetic access$400(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$Listeners;
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mLisenters:Lmiui/os/AsyncTaskWithProgress$Listeners;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTheme:I

    return v0
.end method

.method static synthetic access$600(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitleId:I

    return v0
.end method

.method static synthetic access$700(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessageId:I

    return v0
.end method

.method static synthetic access$900(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lmiui/os/AsyncTaskWithProgress;

    .prologue
    .line 48
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 245
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    invoke-virtual {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->dismiss()V

    .line 248
    :cond_0
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 238
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    invoke-virtual {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancelled()V
    .locals 3

    .prologue
    .line 227
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    sget-object v0, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->dismissDialog()V

    .line 229
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    sget-object v0, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->dismissDialog()V

    .line 220
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 193
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "tag":Ljava/lang/String;
    sget-object v1, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v1, :cond_0

    .line 196
    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->newInstance(Ljava/lang/String;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 197
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-object v2, p0, Lmiui/os/AsyncTaskWithProgress;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, v2, v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 206
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 207
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mCurrentProgress:I

    .line 208
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget v1, p0, Lmiui/os/AsyncTaskWithProgress;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->setProgress(I)V

    .line 211
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 48
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    iput-boolean p1, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 150
    return-object p0
.end method

.method public setIndeterminate(Z)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .param p1, "indeterminate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    iput-boolean p1, p0, Lmiui/os/AsyncTaskWithProgress;->mIndeterminate:Z

    .line 174
    return-object p0
.end method

.method public setMaxProgress(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mMaxProgress:I

    .line 185
    return-object p0
.end method

.method public setMessage(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 1
    .param p1, "message"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessageId:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 122
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/os/AsyncTaskWithProgress;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    const/4 v0, 0x0

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessageId:I

    .line 133
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 134
    return-object p0
.end method

.method public setProgressStyle(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .param p1, "style"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mProgressStyle:I

    .line 161
    return-object p0
.end method

.method public setTheme(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .param p1, "theme"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mTheme:I

    .line 86
    return-object p0
.end method

.method public setTitle(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 1
    .param p1, "title"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitleId:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 98
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/os/AsyncTaskWithProgress;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lmiui/os/AsyncTaskWithProgress",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lmiui/os/AsyncTaskWithProgress;, "Lmiui/os/AsyncTaskWithProgress<TParams;TResult;>;"
    const/4 v0, 0x0

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitleId:I

    .line 109
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 110
    return-object p0
.end method
