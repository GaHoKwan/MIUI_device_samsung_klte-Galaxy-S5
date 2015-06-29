.class public Lmiui/util/AttributeResolver;
.super Ljava/lang/Object;
.source "AttributeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AttributeResolver$ResultCache;
    }
.end annotation


# static fields
.field private static final TYPED_VALUE:Landroid/util/TypedValue;

.field private static final TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static mResultCache:Lmiui/util/AttributeResolver$ResultCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lmiui/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 22
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 35
    sget-object v0, Lmiui/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    sget-object v1, Lmiui/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 39
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "typedValue":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 41
    .restart local v0    # "typedValue":Landroid/util/TypedValue;
    sget-object v1, Lmiui/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isUsingMiuiTheme(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 156
    sget-object v1, Lmiui/util/AttributeResolver;->mResultCache:Lmiui/util/AttributeResolver$ResultCache;

    .line 157
    .local v1, "rc":Lmiui/util/AttributeResolver$ResultCache;
    if-eqz v1, :cond_0

    iget-object v7, v1, Lmiui/util/AttributeResolver$ResultCache;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_0

    .line 158
    iget-boolean v3, v1, Lmiui/util/AttributeResolver$ResultCache;->mResult:Z

    .line 174
    :goto_0
    return v3

    .line 160
    :cond_0
    sget v7, Lmiui/R$attr;->miui_version:I

    invoke-static {p0, v7, v6}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v5

    .line 161
    .local v5, "version":I
    if-eqz v5, :cond_2

    .line 162
    const v7, 0x101005d

    invoke-static {p0, v7}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v2

    .line 163
    .local v2, "resId":I
    if-lez v2, :cond_2

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 165
    .local v4, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 166
    sget-object v7, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eq v7, v8, :cond_1

    .line 168
    .local v3, "ret":Z
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    new-instance v6, Lmiui/util/AttributeResolver$ResultCache;

    invoke-direct {v6, p0, v3}, Lmiui/util/AttributeResolver$ResultCache;-><init>(Landroid/content/Context;Z)V

    sput-object v6, Lmiui/util/AttributeResolver;->mResultCache:Lmiui/util/AttributeResolver$ResultCache;

    goto :goto_0

    .end local v3    # "ret":Z
    :cond_1
    move v3, v6

    .line 167
    goto :goto_1

    .line 173
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "resId":I
    .end local v4    # "theme":Landroid/content/res/Resources$Theme;
    :cond_2
    new-instance v7, Lmiui/util/AttributeResolver$ResultCache;

    invoke-direct {v7, p0, v6}, Lmiui/util/AttributeResolver$ResultCache;-><init>(Landroid/content/Context;Z)V

    sput-object v7, Lmiui/util/AttributeResolver;->mResultCache:Lmiui/util/AttributeResolver$ResultCache;

    move v3, v6

    .line 174
    goto :goto_0
.end method

.method public static resolve(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 54
    invoke-static {p0}, Lmiui/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v1

    .line 55
    .local v1, "typedValue":Landroid/util/TypedValue;
    const/4 v0, -0x1

    .line 56
    .local v0, "ret":I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    .line 59
    :cond_0
    return v0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I
    .param p2, "defValue"    # Z

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-static {p0}, Lmiui/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v1

    .line 91
    .local v1, "typedValue":Landroid/util/TypedValue;
    move v0, p2

    .line 92
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_1

    move v0, v2

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static resolveDimension(Landroid/content/Context;I)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static resolveDimensionPixelSize(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 69
    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v0

    .line 70
    .local v0, "id":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static resolveInt(Landroid/content/Context;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 126
    invoke-static {p0}, Lmiui/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v1

    .line 127
    .local v1, "typedValue":Landroid/util/TypedValue;
    move v0, p2

    .line 128
    .local v0, "ret":I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 130
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 133
    :cond_0
    return v0
.end method
