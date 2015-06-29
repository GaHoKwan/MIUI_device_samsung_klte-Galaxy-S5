.class public Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;
.super Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;
.source "Android_Content_SyncStatusInfo_class.java"


# static fields
.field private static final CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final GET_LAST_FAILURE_MESG_AS_INT:Lmiui/reflect/Method;

.field private static final INITIALIZE:Lmiui/reflect/Field;

.field private static final LAST_FAILURE_TIME:Lmiui/reflect/Field;

.field private static final LAST_SUCCESS_TIME:Lmiui/reflect/Field;

.field private static final PENDING:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "android.content.SyncStatusInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    :goto_0
    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    .line 30
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v3, "pending"

    const-string v4, "Z"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->PENDING:Lmiui/reflect/Field;

    .line 33
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v3, "initialize"

    const-string v4, "Z"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->INITIALIZE:Lmiui/reflect/Field;

    .line 36
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v3, "lastSuccessTime"

    const-string v4, "J"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->LAST_SUCCESS_TIME:Lmiui/reflect/Field;

    .line 39
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v3, "lastFailureTime"

    const-string v4, "J"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->LAST_FAILURE_TIME:Lmiui/reflect/Field;

    .line 42
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v3, "getLastFailureMesgAsInt"

    const-string v4, "(I)I"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->GET_LAST_FAILURE_MESG_AS_INT:Lmiui/reflect/Method;

    return-void

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.content.SyncStatusInfo"

    invoke-virtual {v2, v3, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitialize(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 58
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->INITIALIZE:Lmiui/reflect/Field;

    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.SyncStatusInfo.initialize"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastFailureMesgAsInt(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "def"    # I

    .prologue
    .line 88
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->GET_LAST_FAILURE_MESG_AS_INT:Lmiui/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 92
    .end local p2    # "def":I
    :goto_0
    return p2

    .line 89
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.SyncStatusInfo.getLastFailureMesgAsInt"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getLastFailureTime(Ljava/lang/Object;)J
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 78
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->LAST_FAILURE_TIME:Lmiui/reflect/Field;

    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 82
    :goto_0
    return-wide v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.SyncStatusInfo.lastFailureTime"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getLastSuccessTime(Ljava/lang/Object;)J
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 68
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->LAST_SUCCESS_TIME:Lmiui/reflect/Field;

    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 72
    :goto_0
    return-wide v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.SyncStatusInfo.lastSuccessTime"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getPending(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 48
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->PENDING:Lmiui/reflect/Field;

    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    :goto_0
    return v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.SyncStatusInfo.pending"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method
