.class public Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;
.super Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;
.source "Android_Widget_ListPopupWindow_class.java"


# static fields
.field private static final mPopup:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mPopup"

    const-string v2, "Landroid/widget/PopupWindow;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mPopup:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->attachConstructor(Ljava/lang/String;)J

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 44
    const-string v0, "setHorizontalOffset"

    const-string v1, "(I)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 46
    :cond_0
    return-void
.end method

.method protected handle()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 50
    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    move v8, v7

    invoke-virtual/range {v1 .. v8}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handleSetHorizontalOffset(JLandroid/widget/ListPopupWindow;I)V

    .line 52
    return-void
.end method

.method protected handleSetHorizontalOffset(JLandroid/widget/ListPopupWindow;I)V
    .locals 3
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/ListPopupWindow;
    .param p4, "offset"    # I

    .prologue
    .line 73
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p4, v1

    .line 78
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->originalSetHorizontalOffset(JLandroid/widget/ListPopupWindow;I)V

    .line 79
    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 15
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/ListPopupWindow;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "defStyleAttr"    # I
    .param p7, "defStyleRes"    # I

    .prologue
    .line 56
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v12}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    sget-boolean v5, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v5, :cond_0

    sget v5, Lmiui/R$attr;->windowActionBar:I

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v5

    if-ltz v5, :cond_0

    sget v5, Lcom/miui/internal/R$attr;->hidePopupArrow:I

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v5, v6}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    :try_start_0
    new-instance v4, Lmiui/widget/ArrowPopupWindow;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v4, v0, v1, v2, v3}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    .local v4, "arrowPopup":Lmiui/widget/ArrowPopupWindow;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 66
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v4}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    :try_end_0
    .catch Lmiui/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v4    # "arrowPopup":Lmiui/widget/ArrowPopupWindow;
    :catch_0
    move-exception v13

    .line 68
    .local v13, "e":Lmiui/reflect/ReflectionException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v5

    const-string v6, "ListPopupWindow constructor"

    invoke-virtual {v5, v6, v13}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected originalSetHorizontalOffset(JLandroid/widget/ListPopupWindow;I)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/ListPopupWindow;
    .param p4, "offset"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.originalSetHorizontalOffset(long, ListPopupWindow, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/ListPopupWindow;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "defStyleAttr"    # I
    .param p7, "defStyleRes"    # I

    .prologue
    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.original_init_(long, ListPopupWindow, Context, AttributeSet, int, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    .locals 1
    .param p1, "lpw"    # Landroid/widget/ListPopupWindow;
    .param p2, "popup"    # Landroid/widget/PopupWindow;

    .prologue
    .line 33
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mPopup:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method
