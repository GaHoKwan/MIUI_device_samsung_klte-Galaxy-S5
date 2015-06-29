.class public abstract Lcom/miui/internal/variable/Android_View_Window_class;
.super Ljava/lang/Object;
.source "Android_View_Window_class.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_Window_class$1;,
        Lcom/miui/internal/variable/Android_View_Window_class$Factory;
    }
.end annotation


# static fields
.field protected static setExtraFlags:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    :try_start_0
    const-class v1, Landroid/view/Window;

    const-string v2, "setExtraFlags"

    const-string v3, "(II)V"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/variable/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 18
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 19
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/miui/internal/variable/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public abstract setTranslucentStatus(Landroid/view/Window;I)Z
.end method
