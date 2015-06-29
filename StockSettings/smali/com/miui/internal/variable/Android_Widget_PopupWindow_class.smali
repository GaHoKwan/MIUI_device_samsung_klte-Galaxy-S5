.class public abstract Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;
.super Ljava/lang/Object;
.source "Android_Widget_PopupWindow_class.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$1;,
        Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;
    }
.end annotation


# static fields
.field protected static setLayoutInScreenEnabled:Lmiui/reflect/Method;

.field protected static setLayoutInsetDecor:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setLayoutInScreenEnabled"

    const-string v3, "(Z)V"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled:Lmiui/reflect/Method;

    .line 20
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setLayoutInsetDecor"

    const-string v3, "(Z)V"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor:Lmiui/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 21
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "no such method"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V
.end method

.method public abstract setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V
.end method
