.class public Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;
.super Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class;
.source "Android_App_AlertDialog_Builder_class.java"


# static fields
.field private static final P:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v0, Landroid/app/AlertDialog$Builder;

    const-string v1, "P"

    const-string v2, "Lcom/android/internal/app/AlertController$AlertParams;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;->P:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "(Landroid/content/Context;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;->attachConstructor(Ljava/lang/String;)J

    .line 27
    return-void
.end method

.method protected handle()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 31
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;->handle_init_(JLandroid/app/AlertDialog$Builder;Landroid/content/Context;I)V

    .line 32
    return-void
.end method

.method protected handle_init_(JLandroid/app/AlertDialog$Builder;Landroid/content/Context;I)V
    .locals 5
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/app/AlertDialog$Builder;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "theme"    # I

    .prologue
    .line 35
    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;->original_init_(JLandroid/app/AlertDialog$Builder;Landroid/content/Context;I)V

    .line 37
    :try_start_0
    new-instance v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "p":Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;
    sget-object v2, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;->P:Lmiui/reflect/Field;

    invoke-virtual {v2, p3, v1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "p":Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "P"

    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected original_init_(JLandroid/app/AlertDialog$Builder;Landroid/content/Context;I)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/app/AlertDialog$Builder;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "theme"    # I

    .prologue
    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_App_AlertDialog_Builder_class.original_init_(long, AlertDialog.Builder, Context, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
