.class Lmiui/widget/ClearableEditText$1;
.super Ljava/lang/Object;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ClearableEditText;


# direct methods
.method constructor <init>(Lmiui/widget/ClearableEditText;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 60
    iget-object v1, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lmiui/widget/ClearableEditText;->mShown:Z
    invoke-static {v1, v0}, Lmiui/widget/ClearableEditText;->access$002(Lmiui/widget/ClearableEditText;Z)Z

    .line 61
    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->refreshDrawableState()V

    .line 62
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 52
    return-void
.end method
