.class public abstract Lcom/miui/internal/variable/AbsClassFactory;
.super Ljava/lang/Object;
.source "AbsClassFactory.java"


# static fields
.field protected static final CURRENT_SUPPORT_SDK_VERSION:I

.field protected static final MIN_SUPPORT_SDK_VERSION:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/miui/internal/variable/AbsClassFactory;->CURRENT_SUPPORT_SDK_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 21
    sget v3, Lcom/miui/internal/variable/AbsClassFactory;->CURRENT_SUPPORT_SDK_VERSION:I

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 22
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "com.miui.internal.variable.v%d.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "fullName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 33
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fullName":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 28
    .restart local v2    # "fullName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 32
    .end local v2    # "fullName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v4

    new-instance v5, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot found class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v5}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    const/4 v4, 0x0

    goto :goto_1

    .line 26
    .restart local v2    # "fullName":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public abstract get()Ljava/lang/Object;
.end method
