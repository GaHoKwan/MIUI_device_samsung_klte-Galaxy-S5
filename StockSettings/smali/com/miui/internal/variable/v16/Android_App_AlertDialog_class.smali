.class public Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;
.super Lcom/miui/internal/variable/Android_App_AlertDialog_class;
.source "Android_App_AlertDialog_class.java"


# static fields
.field private static final mAlertField:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v0, Landroid/app/AlertDialog;

    const-string v1, "mAlert"

    const-string v2, "Lcom/android/internal/app/AlertController;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->mAlertField:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_AlertDialog_class;-><init>()V

    return-void
.end method

.method private updateAlertField(Landroid/app/AlertDialog;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/miui/internal/variable/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 60
    .local v0, "alert":Lcom/miui/internal/variable/AlertControllerWrapper;
    sget-object v2, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->mAlertField:Lmiui/reflect/Field;

    invoke-virtual {v2, p1, v0}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "alert":Lcom/miui/internal/variable/AlertControllerWrapper;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.app.AlertDialog.mAlert"

    invoke-virtual {v2, v3, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public buildProxy()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "(Landroid/content/Context;IZ)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->attachConstructor(Ljava/lang/String;)J

    .line 33
    const-string v0, "(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->attachConstructor(Ljava/lang/String;)J

    .line 34
    return-void
.end method

.method protected handle()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 26
    move-object v1, p0

    move-object v5, v4

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V

    move-object v1, p0

    move-object v5, v4

    move-object v7, v4

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 28
    return-void
.end method

.method protected handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/app/AlertDialog;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "theme"    # I
    .param p6, "createContextWrapper"    # Z

    .prologue
    .line 37
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->original_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V

    .line 38
    invoke-direct {p0, p3}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->updateAlertField(Landroid/app/AlertDialog;)V

    .line 39
    return-void
.end method

.method protected handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/app/AlertDialog;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "cancelable"    # Z
    .param p6, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->original_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 48
    invoke-direct {p0, p3}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->updateAlertField(Landroid/app/AlertDialog;)V

    .line 49
    return-void
.end method

.method protected original_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/app/AlertDialog;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "theme"    # I
    .param p6, "createContextWrapper"    # Z

    .prologue
    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_App_AlertDialog_class.original_init_(long, AlertDialog, Context, int, boolean)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/app/AlertDialog;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "cancelable"    # Z
    .param p6, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_App_AlertDialog_class.original_init_(long, AlertDialog, Context, boolean, OnCancelListener)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
