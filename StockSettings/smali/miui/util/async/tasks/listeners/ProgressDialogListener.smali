.class public Lmiui/util/async/tasks/listeners/ProgressDialogListener;
.super Lmiui/util/async/tasks/listeners/BaseTaskListener;
.source "ProgressDialogListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;
    }
.end annotation


# static fields
.field static final ALL_LISTENERS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/util/async/tasks/listeners/ProgressDialogListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCancelable:Z

.field mCurrentProgress:I

.field mCurrentTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/util/async/Task",
            "<*>;>;"
        }
    .end annotation
.end field

.field mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

.field mFragmentManager:Landroid/app/FragmentManager;

.field mIndeterminate:Z

.field mMaxProgress:I

.field mMessage:Ljava/lang/CharSequence;

.field mMessageId:I

.field mProgressStyle:I

.field mTheme:I

.field mTitle:Ljava/lang/CharSequence;

.field mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    .line 53
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTheme:I

    .line 58
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    .line 63
    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    .line 68
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    .line 73
    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    .line 78
    iput-boolean v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    .line 83
    iput-boolean v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    .line 88
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    .line 93
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mProgressStyle:I

    .line 98
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    .line 106
    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    .line 107
    return-void
.end method


# virtual methods
.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 3
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-virtual {v0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->dismiss()V

    .line 280
    :cond_0
    sget-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgressDialogListener@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 6
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    const/4 v5, 0x0

    .line 223
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    .line 226
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProgressDialogListener@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "tag":Ljava/lang/String;
    sget-object v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-direct {v3}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;-><init>()V

    iput-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "ProgressDialogListener"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-virtual {v3, v0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 232
    iget-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iget-object v4, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v4, v2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "tag":Ljava/lang/String;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ProgressDialogListener"

    const-string v4, "cannot show dialog"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    iput-object v5, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 236
    iput-object v5, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    .line 237
    invoke-virtual {p2, p0}, Lmiui/util/async/Task;->removeListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;

    goto :goto_0
.end method

.method public onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V
    .locals 2
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p3, "max"    # I
    .param p4, "current"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 244
    .local v0, "fragment":Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;
    if-gez p3, :cond_1

    .line 245
    iget-boolean v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    if-nez v1, :cond_0

    .line 246
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 247
    if-eqz v0, :cond_0

    .line 248
    iget-boolean v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    invoke-virtual {v0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setIndeterminate(Z)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-boolean v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    if-eqz v1, :cond_2

    .line 253
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 254
    if-eqz v0, :cond_2

    .line 255
    iget-boolean v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    invoke-virtual {v0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setIndeterminate(Z)V

    .line 259
    :cond_2
    iget v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    if-eq v1, p3, :cond_3

    .line 260
    invoke-virtual {p0, p3}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setMaxProgress(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 261
    if-eqz v0, :cond_3

    .line 262
    iget v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    invoke-virtual {v0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setMaxProgress(I)V

    .line 266
    :cond_3
    iget v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    if-eq v1, p4, :cond_0

    .line 267
    iput p4, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    .line 268
    if-eqz v0, :cond_0

    .line 269
    iget v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setProgress(I)V

    goto :goto_0
.end method

.method public setCancelable(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    .line 182
    return-object p0
.end method

.method public setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0
    .param p1, "indeterminate"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    .line 206
    return-object p0
.end method

.method public setMaxProgress(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 217
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    .line 218
    return-object p0
.end method

.method public setMessage(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 155
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    .line 157
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    .line 170
    return-object p0
.end method

.method public setProgressStyle(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 193
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mProgressStyle:I

    .line 194
    return-object p0
.end method

.method public setTheme(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0
    .param p1, "theme"    # I

    .prologue
    .line 117
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTheme:I

    .line 118
    return-object p0
.end method

.method public setTitle(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 129
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    .line 131
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 142
    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    .line 144
    return-object p0
.end method
