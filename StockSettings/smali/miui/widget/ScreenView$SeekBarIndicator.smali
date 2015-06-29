.class Lmiui/widget/ScreenView$SeekBarIndicator;
.super Landroid/widget/LinearLayout;
.source "ScreenView.java"

# interfaces
.implements Lmiui/widget/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarIndicator"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2137
    iput-object p1, p0, Lmiui/widget/ScreenView$SeekBarIndicator;->this$0:Lmiui/widget/ScreenView;

    .line 2138
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2139
    return-void
.end method


# virtual methods
.method public fastOffset(I)Z
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 2143
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SeekBarIndicator;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2144
    # getter for: Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;
    invoke-static {}, Lmiui/widget/ScreenView;->access$800()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SeekBarIndicator;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SeekBarIndicator;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setRightDirectly(Landroid/view/View;I)V

    .line 2145
    # getter for: Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;
    invoke-static {}, Lmiui/widget/ScreenView;->access$800()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setLeftDirectly(Landroid/view/View;I)V

    .line 2146
    const/4 v0, 0x1

    .line 2148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
