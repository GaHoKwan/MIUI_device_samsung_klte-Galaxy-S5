.class Lmiui/widget/ListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1354
    iput-object p1, p0, Lmiui/widget/ListPopupWindow$ListSelectorHider;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/widget/ListPopupWindow;
    .param p2, "x1"    # Lmiui/widget/ListPopupWindow$1;

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$ListSelectorHider;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    .line 1358
    return-void
.end method
