.class public Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;
.super Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;
.source "Android_Widget_ListView_class.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachSpecialMethod()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->attachConstructor(Ljava/lang/String;)J

    .line 26
    return-void
.end method

.method protected handle()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 19
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-super {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handle()V

    .line 21
    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/ListView;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "defStyleAttr"    # I
    .param p7, "defStyle"    # I

    .prologue
    .line 30
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-virtual {p0, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->doInit(Landroid/widget/ListView;Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method protected original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/ListView;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "defStyleAttr"    # I
    .param p7, "defStyle"    # I

    .prologue
    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v21.Android_Widget_ListView_class.original_init_(long, ListView, Context, AttributeSet, int, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
