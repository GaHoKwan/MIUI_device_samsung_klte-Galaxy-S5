.class Lmiui/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/widget/ListPopupWindow;
    .param p2, "x1"    # Lmiui/widget/ListPopupWindow$1;

    .prologue
    .line 1338
    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 1346
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiui/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    .line 1351
    return-void
.end method
