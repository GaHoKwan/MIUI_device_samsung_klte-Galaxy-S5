.class public Lmiui/app/ProgressDialog;
.super Lmiui/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    .line 72
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->initFormats()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    .line 89
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->initFormats()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ProgressDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ProgressDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ProgressDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$301(Lmiui/app/ProgressDialog;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ProgressDialog;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lmiui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 94
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 95
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 96
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    iget v0, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 122
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 137
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 154
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v0, p2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v0, p3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 158
    invoke-virtual {v0, p4}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 159
    invoke-virtual {v0, p5}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 160
    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 161
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 295
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 344
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/ProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 358
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/ProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x102000d

    const/4 v7, 0x0

    .line 166
    invoke-virtual {p0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 167
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const v5, 0x101005d

    const/4 v6, 0x0

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 170
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v3, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 175
    new-instance v3, Lmiui/app/ProgressDialog$1;

    invoke-direct {v3, p0}, Lmiui/app/ProgressDialog$1;-><init>(Lmiui/app/ProgressDialog;)V

    iput-object v3, p0, Lmiui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 203
    const/4 v3, 0x6

    sget v4, Lcom/miui/internal/R$layout;->alert_dialog_progress:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 206
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 207
    invoke-virtual {p0, v2}, Lmiui/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 216
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    iget v3, p0, Lmiui/app/ProgressDialog;->mMax:I

    if-lez v3, :cond_0

    .line 218
    iget v3, p0, Lmiui/app/ProgressDialog;->mMax:I

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 220
    :cond_0
    iget v3, p0, Lmiui/app/ProgressDialog;->mProgressVal:I

    if-lez v3, :cond_1

    .line 221
    iget v3, p0, Lmiui/app/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 223
    :cond_1
    iget v3, p0, Lmiui/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v3, :cond_2

    .line 224
    iget v3, p0, Lmiui/app/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 226
    :cond_2
    iget v3, p0, Lmiui/app/ProgressDialog;->mIncrementBy:I

    if-lez v3, :cond_3

    .line 227
    iget v3, p0, Lmiui/app/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->incrementProgressBy(I)V

    .line 229
    :cond_3
    iget v3, p0, Lmiui/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v3, :cond_4

    .line 230
    iget v3, p0, Lmiui/app/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 232
    :cond_4
    iget-object v3, p0, Lmiui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 233
    iget-object v3, p0, Lmiui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    :cond_5
    iget-object v3, p0, Lmiui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 236
    iget-object v3, p0, Lmiui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_6
    iget-object v3, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 239
    iget-object v3, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 241
    :cond_7
    iget-boolean v3, p0, Lmiui/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 242
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 243
    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 244
    return-void

    .line 209
    .end local v2    # "view":Landroid/view/View;
    :cond_8
    const/4 v3, 0x5

    sget v4, Lcom/miui/internal/R$layout;->progress_dialog:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 212
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 213
    sget v3, Lcom/miui/internal/R$id;->message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 214
    invoke-virtual {p0, v2}, Lmiui/app/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lmiui/app/AlertDialog;->onStart()V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ProgressDialog;->mHasStarted:Z

    .line 250
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lmiui/app/AlertDialog;->onStop()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/ProgressDialog;->mHasStarted:Z

    .line 256
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iput-boolean p1, p0, Lmiui/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 385
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 330
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iput p1, p0, Lmiui/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 420
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 421
    iget v0, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 423
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 430
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 428
    :cond_1
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 264
    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 266
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iput p1, p0, Lmiui/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 371
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 452
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 453
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 454
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 465
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 466
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 467
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 440
    iput p1, p0, Lmiui/app/ProgressDialog;->mProgressStyle:I

    .line 441
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 280
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iput p1, p0, Lmiui/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
