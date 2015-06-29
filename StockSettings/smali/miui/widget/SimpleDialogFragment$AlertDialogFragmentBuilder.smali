.class public final Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
.super Ljava/lang/Object;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SimpleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertDialogFragmentBuilder"
.end annotation


# instance fields
.field private mCancelable:Z

.field private mCreated:Z

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    .line 132
    iput p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mType:I

    .line 133
    return-void
.end method


# virtual methods
.method public create()Lmiui/widget/SimpleDialogFragment;
    .locals 4

    .prologue
    .line 151
    iget-boolean v2, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCreated:Z

    if-eqz v2, :cond_0

    .line 152
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "dialog has been created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCreated:Z

    .line 155
    new-instance v1, Lmiui/widget/SimpleDialogFragment;

    invoke-direct {v1}, Lmiui/widget/SimpleDialogFragment;-><init>()V

    .line 156
    .local v1, "f":Lmiui/widget/SimpleDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "msg_res_id"

    iget-object v3, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "cancelable"

    iget-boolean v3, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v2, "type"

    iget v3, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    invoke-virtual {v1, v0}, Lmiui/widget/SimpleDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    return-object v1
.end method

.method public setCancelable(Z)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    .line 142
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mMessage:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mTitle:Ljava/lang/String;

    .line 147
    return-object p0
.end method
