.class public abstract Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_Graphics_Drawable_Drawable_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$1;,
        Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field private static final mIdField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->mIdField:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 66
    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "createFromXmlInner"

    const-string v1, "(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 72
    return-void
.end method

.method public getId(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 32
    sget-object v1, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->mIdField:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 33
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public abstract getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
.end method

.method protected handle()V
    .locals 8

    .prologue
    .line 77
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->handleCreateFromXmlInner(JLandroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.graphics.drawable.Drawable.createFromXmlInner"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected handleCreateFromXmlInner(JLandroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/graphics/drawable/Drawable;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p6, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-interface {p5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 87
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v2, "outside-compound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    new-instance v0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;-><init>()V

    .line 93
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    :cond_0
    move-object v2, v0

    .line 96
    :goto_0
    return-object v2

    .line 90
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->originalCreateFromXmlInner(JLandroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method protected originalCreateFromXmlInner(JLandroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/graphics/drawable/Drawable;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p6, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class.originalCreateFromXmlInner(long, Drawable, Resources, XmlPullParser, AttributeSet)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setId(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "id"    # I

    .prologue
    .line 37
    sget-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->mIdField:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
