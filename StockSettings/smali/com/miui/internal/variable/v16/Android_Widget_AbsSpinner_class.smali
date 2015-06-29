.class public Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;
.super Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;
.source "Android_Widget_AbsSpinner_class.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachSpecialMethod()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->attachConstructor(Ljava/lang/String;)J

    .line 29
    return-void
.end method

.method public buildProxy()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->attachSpecialMethod()V

    .line 25
    return-void
.end method

.method protected doInit(Landroid/widget/AbsSpinner;Landroid/content/Context;)V
    .locals 4
    .param p1, "thiz"    # Landroid/widget/AbsSpinner;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ArrayAdapter;

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 36
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    sget v2, Lcom/miui/internal/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
    :try_end_0
    .catch Lmiui/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Lmiui/reflect/ReflectionException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "AbsSpinner constructor"

    invoke-virtual {v2, v3, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected handle()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 45
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->handle_init_(JLandroid/widget/AbsSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method protected handle_init_(JLandroid/widget/AbsSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/AbsSpinner;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "defStyle"    # I

    .prologue
    .line 50
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->original_init_(JLandroid/widget/AbsSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->doInit(Landroid/widget/AbsSpinner;Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method protected original_init_(JLandroid/widget/AbsSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/AbsSpinner;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "defStyle"    # I

    .prologue
    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_AbsSpinner_class.original_init_(long, AbsSpinner, Context, AttributeSet, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
