.class Lcom/miui/internal/app/ActionBarImpl$2;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$2;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinish(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$2;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 161
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$2;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 162
    return-void
.end method
