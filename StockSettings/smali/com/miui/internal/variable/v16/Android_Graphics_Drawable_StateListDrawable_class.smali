.class public Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;
.source "Android_Graphics_Drawable_StateListDrawable_class.java"


# static fields
.field private static final getStateCount:Lmiui/reflect/Method;

.field private static final getStateDrawable:Lmiui/reflect/Method;

.field private static final getStateSet:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    const-string v1, "getStateCount"

    const-string v2, "()I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->getStateCount:Lmiui/reflect/Method;

    .line 23
    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    const-string v1, "getStateSet"

    const-string v2, "(I)[I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->getStateSet:Lmiui/reflect/Method;

    .line 26
    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    const-string v1, "getStateDrawable"

    const-string v2, "(I)Landroid/graphics/drawable/Drawable;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->getStateDrawable:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 61
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 5
    .param p1, "drawble"    # Landroid/graphics/drawable/StateListDrawable;

    .prologue
    const/4 v1, 0x0

    .line 32
    :try_start_0
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->getStateCount:Lmiui/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, p1, v4}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 36
    :goto_0
    return v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.graphics.drawable.StateListDrawable.getStateCount"

    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "drawble"    # Landroid/graphics/drawable/StateListDrawable;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 52
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->getStateDrawable:Lmiui/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v3, "android.graphics.drawable.StateListDrawable.getStateDrawable"

    invoke-virtual {v1, v3, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 56
    goto :goto_0
.end method

.method public getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 7
    .param p1, "drawble"    # Landroid/graphics/drawable/StateListDrawable;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 42
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->getStateSet:Lmiui/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v3, "android.graphics.drawable.StateListDrawable.getStateSet"

    invoke-virtual {v1, v3, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 46
    goto :goto_0
.end method
