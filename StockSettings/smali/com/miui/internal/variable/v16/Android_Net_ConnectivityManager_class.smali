.class public Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;
.super Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;
.source "Android_Net_ConnectivityManager_class.java"


# static fields
.field private static final isNetworkSupported:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "isNetworkSupported"

    const-string v2, "(I)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;->isNetworkSupported:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;-><init>()V

    return-void
.end method


# virtual methods
.method public isNetworkSupported(Landroid/net/ConnectivityManager;I)Z
    .locals 7
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "networkType"    # I

    .prologue
    const/4 v1, 0x0

    .line 21
    :try_start_0
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;->isNetworkSupported:Lmiui/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, p1, v4}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 25
    :goto_0
    return v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.os.Process.getTotalMemory"

    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
