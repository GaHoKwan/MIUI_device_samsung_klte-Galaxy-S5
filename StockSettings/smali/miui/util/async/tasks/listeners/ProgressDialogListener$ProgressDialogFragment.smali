.class public Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/tasks/listeners/ProgressDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 346
    iget-object v2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v2, v2, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v1, v2, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    .line 348
    .local v1, "task":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/util/async/Task<*>;>;"
    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    .line 350
    .local v0, "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Lmiui/util/async/Task;->cancel()V

    .line 355
    .end local v0    # "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    .end local v1    # "task":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/util/async/Task<*>;>;"
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 356
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 397
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x2

    .line 360
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-nez v1, :cond_0

    .line 361
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 364
    :cond_0
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v3, v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTheme:I

    invoke-direct {v0, v1, v3}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 365
    .local v0, "pd":Lmiui/app/ProgressDialog;
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(I)V

    .line 371
    :goto_1
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    if-eqz v1, :cond_3

    .line 372
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(I)V

    .line 377
    :goto_2
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mProgressStyle:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 378
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 379
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 381
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 384
    :cond_1
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    if-eqz v1, :cond_4

    .line 385
    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v4, v1, p0}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 374
    :cond_3
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 388
    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v2, v1}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 389
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 322
    sget-object v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ProgressDialogListener"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 323
    iget-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-nez v3, :cond_1

    .line 324
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 325
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 326
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 342
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object p0, v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 329
    iget-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iput-object v4, v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    .line 331
    iget-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v2, v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    .line 332
    .local v2, "task":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/util/async/Task<*>;>;"
    const/4 v1, 0x0

    .line 333
    .local v1, "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    check-cast v1, Lmiui/util/async/Task;

    .line 337
    .restart local v1    # "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lmiui/util/async/Task;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    :cond_3
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->dismiss()V

    .line 339
    sget-object v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ProgressDialogListener"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 314
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    .line 315
    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 317
    :cond_0
    return-void
.end method

.method setIndeterminate(Z)V
    .locals 2
    .param p1, "indeterminate"    # Z

    .prologue
    .line 289
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 290
    .local v0, "dialog":Landroid/app/Dialog;
    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 291
    check-cast v0, Lmiui/app/ProgressDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 293
    :cond_0
    return-void
.end method

.method setMaxProgress(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 303
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 304
    .local v0, "dialog":Landroid/app/Dialog;
    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 305
    check-cast v0, Lmiui/app/ProgressDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 307
    :cond_0
    return-void
.end method

.method setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 297
    .local v0, "dialog":Landroid/app/Dialog;
    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 298
    check-cast v0, Lmiui/app/ProgressDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 300
    :cond_0
    return-void
.end method
