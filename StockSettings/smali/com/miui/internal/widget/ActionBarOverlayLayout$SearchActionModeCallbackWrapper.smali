.class Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;
.super Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchActionModeCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    .line 673
    return-void
.end method
