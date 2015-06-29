.class public Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;
.super Lcom/miui/internal/variable/Android_Widget_Spinner_class;
.source "Android_Widget_Spinner_class.java"


# static fields
.field private static final mPopup:Lmiui/reflect/Field;

.field private static final mPopupWindow:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mPopup"

    const-string v2, "Landroid/widget/Spinner$SpinnerPopup;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopup:Lmiui/reflect/Field;

    .line 25
    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mPopup"

    const-string v2, "Landroid/widget/PopupWindow;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopupWindow:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected getArrowPopupWindow(Landroid/widget/Spinner;)Lmiui/widget/ArrowPopupWindow;
    .locals 5
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .prologue
    .line 32
    :try_start_0
    sget-object v3, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopup:Lmiui/reflect/Field;

    invoke-virtual {v3, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, "listPopup":Ljava/lang/Object;
    instance-of v3, v1, Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_0

    .line 34
    sget-object v3, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopupWindow:Lmiui/reflect/Field;

    invoke-virtual {v3, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 35
    .local v2, "popup":Ljava/lang/Object;
    instance-of v3, v2, Lmiui/widget/ArrowPopupWindow;

    if-eqz v3, :cond_0

    .line 36
    check-cast v2, Lmiui/widget/ArrowPopupWindow;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "listPopup":Ljava/lang/Object;
    .end local v2    # "popup":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v3

    const-string v4, "mPopup"

    invoke-virtual {v3, v4, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
