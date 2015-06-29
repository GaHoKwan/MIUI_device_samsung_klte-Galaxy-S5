.class public Lmiui/graphics/BitmapFactory;
.super Landroid/graphics/BitmapFactory;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/graphics/BitmapFactory$CropOption;
    }
.end annotation


# static fields
.field private static final APPELLATION_SUFFIX:[Ljava/lang/String;

.field private static final ASIALANGPATTERN:Ljava/util/regex/Pattern;

.field public static final BITMAP_COLOR_MODE_DARK:I = 0x0

.field public static final BITMAP_COLOR_MODE_LIGHT:I = 0x2

.field public static final BITMAP_COLOR_MODE_MEDIUM:I = 0x1

.field private static PNG_HEAD_FORMAT:[B

.field private static final sCanvasCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSrcInPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 474
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    .line 582
    const-string v0, "miuiimageutilities"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    .line 632
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmiui/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    .line 634
    sget-object v0, Lmiui/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 635
    sget-object v0, Lmiui/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 892
    const-string v0, "[\u3100-\u312d\u31a0-\u31ba\u4e00-\u9fcc\u3400-\u4db5\uf900-\ufad9\u2f00-\u2fd5\u2e80-\u2ef3\u31c0-\u31e3\u1100-\u11ff\ua960-\ua97c\ud7b0-\ud7fb\u3131-\u318e\uac00-\ud7a3\u3040-\u309f\u30a0-\u30ff\u31f0-\u31ff\u3190-\u319f\ua000-\ua48c\ua490-\ua4c6]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    .line 914
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u8001\u5e08"

    aput-object v2, v0, v1

    const-string v1, "\u5148\u751f"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "\u8001\u677f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u4ed4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u624b\u673a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u53d4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u963f\u59e8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5b85"

    aput-object v2, v0, v1

    const-string v1, "\u4f2f"

    aput-object v1, v0, v4

    const/16 v1, 0x9

    const-string v2, "\u4f2f\u6bcd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u4f2f\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u54e5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u59d0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5f1f"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u59b9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u8205"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u59d1"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u4e3b\u4efb"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u7ecf\u7406"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u5de5\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u540c\u4e8b"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5f8b\u5e08"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u53f8\u673a"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u5e08\u5085"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u5e08\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u7237"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u4e2d\u4ecb"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u8463"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u603b"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u592a\u592a"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u4fdd\u59c6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u67d0"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u79d8\u4e66"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u5904\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u5c40\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u73ed\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u5144"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u52a9\u7406"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    return-void

    .line 474
    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/BitmapFactory;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static between(III)I
    .locals 1
    .param p0, "minValue"    # I
    .param p1, "maxValue"    # I
    .param p2, "value"    # I

    .prologue
    .line 436
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/drawable/Drawable;
    .param p3, "fg"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 686
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v5, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 688
    .local v5, "srcRect":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 689
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v6, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v6, "destRect":Landroid/graphics/Rect;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 693
    invoke-static/range {v0 .. v6}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 691
    .end local v6    # "destRect":Landroid/graphics/Rect;
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v6, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v6    # "destRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/drawable/Drawable;
    .param p3, "fg"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bg"    # Landroid/graphics/drawable/Drawable;
    .param p5, "width"    # I

    .prologue
    const/4 v0, 0x0

    .line 710
    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v0, v0, p5, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/drawable/Drawable;
    .param p3, "fg"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bg"    # Landroid/graphics/drawable/Drawable;
    .param p5, "srcRect"    # Landroid/graphics/Rect;
    .param p6, "destRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 727
    if-nez p1, :cond_1

    if-nez p6, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-object v2

    .line 731
    :cond_1
    if-nez p1, :cond_5

    .line 732
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_0

    .line 735
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 740
    :cond_2
    :goto_1
    invoke-static {p0, p2, v2, p5, p6}, Lmiui/graphics/BitmapFactory;->maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 742
    .local v1, "masked":Landroid/graphics/Bitmap;
    invoke-static {}, Lmiui/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 743
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 744
    if-eqz p4, :cond_3

    .line 745
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 746
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 748
    :cond_3
    invoke-virtual {v0, v1, p6, p6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 749
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 750
    if-eqz p3, :cond_4

    .line 751
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 752
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    move-object v2, p1

    .line 755
    goto :goto_0

    .line 736
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "masked":Landroid/graphics/Bitmap;
    :cond_5
    if-nez p6, :cond_2

    .line 737
    new-instance p6, Landroid/graphics/Rect;

    .end local p6    # "destRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p6, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local p6    # "destRect":Landroid/graphics/Rect;
    goto :goto_1
.end method

.method private static computeSampleSize(Lmiui/io/ResettableInputStream;I)I
    .locals 6
    .param p0, "is"    # Lmiui/io/ResettableInputStream;
    .param p1, "pixelSize"    # I

    .prologue
    .line 45
    const/4 v1, 0x1

    .line 46
    .local v1, "roundedSize":I
    if-lez p1, :cond_0

    .line 47
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 48
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 50
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return v1
.end method

.method private static containsEastAsianCharacter(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 921
    sget-object v0, Lmiui/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 539
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 540
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 543
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 825
    invoke-static {p0, p1, p2, v0, v0}, Lmiui/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "drawableId"    # I
    .param p4, "colorId"    # I

    .prologue
    .line 838
    if-nez p1, :cond_0

    .line 839
    const/4 v2, 0x0

    .line 872
    :goto_0
    return-object v2

    .line 841
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/graphics/BitmapFactory;->getWordFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 843
    const/4 v2, 0x0

    goto :goto_0

    .line 846
    :cond_1
    if-nez p3, :cond_2

    .line 847
    sget p3, Lcom/miui/internal/R$drawable;->word_photo_bg:I

    .line 849
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 850
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v9, v10, v11, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 852
    if-nez p4, :cond_3

    .line 853
    sget p4, Lmiui/R$color;->word_photo_color:I

    .line 856
    :cond_3
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-static {v0, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 857
    .local v2, "bmp":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 858
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 860
    new-instance v6, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 861
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 862
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 863
    move/from16 v0, p2

    int-to-float v9, v0

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v10

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 865
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 866
    .local v3, "bound":Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, p1, v9, v10, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 868
    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    sub-int v9, p2, v9

    int-to-double v10, v9

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v7, v10

    .line 869
    .local v7, "x":I
    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    sub-int v9, p2, v9

    int-to-double v10, v9

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v8, v10

    .line 870
    .local v8, "y":I
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {v4, p1, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->contact_photo_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 655
    .local v0, "width":I
    invoke-static {p0, p1, v0}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I

    .prologue
    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 667
    .local v6, "res":Landroid/content/res/Resources;
    sget v0, Lcom/miui/internal/R$drawable;->ic_contact_photo_fg:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 668
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    sget v0, Lcom/miui/internal/R$drawable;->ic_contact_photo_bg:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 669
    .local v4, "bg":Landroid/graphics/drawable/Drawable;
    sget v0, Lcom/miui/internal/R$drawable;->ic_contact_photo_mask:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 670
    .local v2, "mask":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    move-object v0, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .locals 27
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "dstBmp"    # Landroid/graphics/Bitmap;
    .param p2, "cOpt"    # Lmiui/graphics/BitmapFactory$CropOption;

    .prologue
    .line 378
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 379
    :cond_0
    const/16 p1, 0x0

    .line 432
    .end local p1    # "dstBmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p1

    .line 381
    .restart local p1    # "dstBmp":Landroid/graphics/Bitmap;
    :cond_2
    if-nez p2, :cond_3

    .line 382
    new-instance p2, Lmiui/graphics/BitmapFactory$CropOption;

    .end local p2    # "cOpt":Lmiui/graphics/BitmapFactory$CropOption;
    invoke-direct/range {p2 .. p2}, Lmiui/graphics/BitmapFactory$CropOption;-><init>()V

    .line 385
    .restart local p2    # "cOpt":Lmiui/graphics/BitmapFactory$CropOption;
    :cond_3
    move-object/from16 v0, p2

    iget-object v12, v0, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 386
    .local v12, "srcDrawingArea":Landroid/graphics/Rect;
    if-nez v12, :cond_4

    .line 387
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "srcDrawingArea":Landroid/graphics/Rect;
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 390
    .restart local v12    # "srcDrawingArea":Landroid/graphics/Rect;
    :cond_4
    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v15

    .line 391
    .local v15, "srcLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v15, v0, v1}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v16

    .line 392
    .local v16, "srcRight":I
    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v17

    .line 393
    .local v17, "srcTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v11

    .line 394
    .local v11, "srcBottom":I
    sub-int v19, v16, v15

    .line 395
    .local v19, "srcWidth":I
    sub-int v13, v11, v17

    .line 396
    .local v13, "srcHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 397
    .local v6, "destWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 399
    .local v5, "destHeight":I
    const/16 v22, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 400
    const/16 v22, 0x0

    div-int/lit8 v23, v6, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    .line 401
    const/16 v22, 0x0

    div-int/lit8 v23, v5, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    .line 403
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 404
    .local v8, "paint":Landroid/graphics/Paint;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 405
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 406
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 408
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 409
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 411
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    if-lez v22, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    if-lez v22, :cond_5

    .line 412
    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v25, v0

    sub-int v25, v6, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v26, v0

    sub-int v26, v5, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 414
    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 417
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    sub-int v21, v6, v22

    .line 418
    .local v21, "visibleWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    sub-int v20, v5, v22

    .line 419
    .local v20, "visibleHeight":I
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    int-to-float v0, v13

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 420
    .local v9, "ratio":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v9

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v14, v0

    .line 421
    .local v14, "srcHorPadding":I
    int-to-float v0, v13

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v9

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 422
    .local v18, "srcVerPadding":I
    new-instance v10, Landroid/graphics/Rect;

    add-int v22, v15, v14

    add-int v23, v17, v18

    sub-int v24, v16, v14

    sub-int v25, v11, v18

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    .local v10, "src":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v24, v0

    sub-int v24, v6, v24

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v25, v0

    sub-int v25, v5, v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 425
    .local v7, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v10, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 427
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    move/from16 v22, v0

    if-lez v22, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    move/from16 v22, v0

    ushr-int/lit8 v22, v22, 0x18

    if-eqz v22, :cond_1

    .line 428
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 430
    new-instance v22, Landroid/graphics/RectF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    int-to-float v0, v6

    move/from16 v25, v0

    int-to-float v0, v5

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "cOpt"    # Lmiui/graphics/BitmapFactory$CropOption;

    .prologue
    .line 363
    if-eqz p0, :cond_0

    .line 364
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    .local v0, "destBmp":Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p1}, Lmiui/graphics/BitmapFactory;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 367
    .end local v0    # "destBmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "destWidth"    # I
    .param p3, "destHeight"    # I
    .param p4, "forceDecode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    :try_start_1
    invoke-static {v1, p2, p3, p4}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 185
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return-object v2

    .line 185
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 185
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pixelSize"    # I
    .param p3, "forceDecode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    :try_start_1
    invoke-static {v1, p2, p3}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 228
    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return-object v2

    .line 228
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 228
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "forceDecode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    const/4 v2, -0x1

    :try_start_1
    invoke-static {v1, v2, p2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 161
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return-object v2

    .line 161
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 161
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "forceDecode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    :try_start_1
    invoke-static {v1, p1, p2, p3}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 140
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return-object v2

    .line 140
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 140
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static decodeBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "pixelSize"    # I
    .param p2, "forceDecode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    :try_start_1
    invoke-static {v1, p1, p2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return-object v2

    .line 206
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 206
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "forceDecode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    const/4 v2, -0x1

    :try_start_1
    invoke-static {v1, v2, p1}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 117
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return-object v2

    .line 117
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 117
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static decodeBitmap(Lmiui/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "is"    # Lmiui/io/ResettableInputStream;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "forceDecode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    mul-int v1, p1, p2

    .line 281
    .local v1, "pixelSize":I
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 282
    :cond_0
    const/4 v1, -0x1

    .line 284
    :cond_1
    invoke-static {p0, v1, p3}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    .local v0, "destBmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 286
    const/4 v3, 0x0

    .line 295
    :goto_0
    return-object v3

    .line 288
    :cond_2
    if-lez v1, :cond_3

    .line 289
    move-object v2, v0

    .line 290
    .local v2, "srcBmp":Landroid/graphics/Bitmap;
    invoke-static {v2, p1, p2}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    if-eq v2, v0, :cond_3

    .line 292
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .end local v2    # "srcBmp":Landroid/graphics/Bitmap;
    :cond_3
    move-object v3, v0

    .line 295
    goto :goto_0
.end method

.method public static decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "is"    # Lmiui/io/ResettableInputStream;
    .param p1, "pixelSize"    # I
    .param p2, "forceDecode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 246
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 247
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 248
    invoke-static {p0, p1}, Lmiui/graphics/BitmapFactory;->computeSampleSize(Lmiui/io/ResettableInputStream;I)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "retry":I
    move v4, v3

    .line 252
    .end local v3    # "retry":I
    .local v4, "retry":I
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "retry":I
    .restart local v3    # "retry":I
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lmiui/io/ResettableInputStream;->reset()V

    .line 255
    const/4 v5, 0x0

    invoke-static {p0, v5, v2}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :cond_0
    return-object v0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    if-eqz p2, :cond_1

    .line 259
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v4, v3

    .line 263
    .end local v3    # "retry":I
    .restart local v4    # "retry":I
    goto :goto_0

    .line 261
    .end local v4    # "retry":I
    .restart local v3    # "retry":I
    :cond_1
    throw v1
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bmpIn"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 554
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 555
    .local v0, "bmpOut":Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p1}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 556
    return-object v0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "dstBmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 569
    if-nez p0, :cond_0

    .line 570
    const/4 v0, 0x0

    .line 576
    :goto_0
    return-object v0

    .line 572
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 573
    :cond_1
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 575
    :cond_2
    invoke-static {p0, p1, p2}, Lmiui/graphics/BitmapFactory;->native_fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    move-object v0, p1

    .line 576
    goto :goto_0
.end method

.method public static getBitmapColorMode(Landroid/graphics/Bitmap;I)I
    .locals 22
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "sampleRatio"    # I

    .prologue
    .line 984
    const/4 v11, 0x2

    .line 985
    .local v11, "ret":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int v12, v15, p1

    .line 986
    .local v12, "scaledHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    div-int v13, v15, p1

    .line 987
    .local v13, "scaledWidth":I
    mul-int v15, v13, v12

    div-int/lit8 v4, v15, 0x5

    .line 988
    .local v4, "darkPixelCountThreshold":I
    move-object/from16 v0, p0

    invoke-static {v0, v13, v12}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 990
    .local v14, "tmpBmp":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 991
    .local v3, "darkPixelCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_3

    .line 992
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v12, :cond_1

    .line 993
    invoke-virtual {v14, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 994
    .local v9, "pixel":I
    const/high16 v15, 0xff0000

    and-int/2addr v15, v9

    shr-int/lit8 v10, v15, 0x10

    .line 995
    .local v10, "red":I
    const v15, 0xff00

    and-int/2addr v15, v9

    shr-int/lit8 v5, v15, 0x8

    .line 996
    .local v5, "green":I
    and-int/lit16 v2, v9, 0xff

    .line 997
    .local v2, "blue":I
    int-to-float v15, v10

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3fd3333333333333L    # 0.3

    mul-double v16, v16, v18

    int-to-float v15, v5

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v18, v18, v20

    add-double v16, v16, v18

    int-to-float v15, v2

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v20, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v6, v0

    .line 998
    .local v6, "grey":I
    const/16 v15, 0xb4

    if-ge v6, v15, :cond_2

    .line 999
    add-int/lit8 v3, v3, 0x1

    .line 1000
    if-le v3, v4, :cond_0

    .line 1001
    const/4 v11, 0x1

    .line 1003
    :cond_0
    mul-int/lit8 v15, v4, 0x2

    if-le v3, v15, :cond_2

    .line 1004
    const/4 v11, 0x0

    .line 991
    .end local v2    # "blue":I
    .end local v5    # "green":I
    .end local v6    # "grey":I
    .end local v9    # "pixel":I
    .end local v10    # "red":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 992
    .restart local v2    # "blue":I
    .restart local v5    # "green":I
    .restart local v6    # "grey":I
    .restart local v9    # "pixel":I
    .restart local v10    # "red":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1011
    .end local v2    # "blue":I
    .end local v5    # "green":I
    .end local v6    # "grey":I
    .end local v8    # "j":I
    .end local v9    # "pixel":I
    .end local v10    # "red":I
    :cond_3
    move-object/from16 v0, p0

    if-eq v14, v0, :cond_4

    .line 1012
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 1015
    :cond_4
    return v11
.end method

.method public static getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    :try_start_1
    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 97
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return-object v2

    .line 97
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 97
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    :try_start_1
    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 78
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return-object v2

    .line 78
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 78
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .param p0, "is"    # Lmiui/io/ResettableInputStream;

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    return-object v0
.end method

.method private static getCachedCanvas()Landroid/graphics/Canvas;
    .locals 2

    .prologue
    .line 639
    sget-object v1, Lmiui/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    .line 640
    .local v0, "c":Landroid/graphics/Canvas;
    if-nez v0, :cond_0

    .line 641
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0    # "c":Landroid/graphics/Canvas;
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 642
    .restart local v0    # "c":Landroid/graphics/Canvas;
    sget-object v1, Lmiui/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 644
    :cond_0
    return-object v0
.end method

.method private static getWordFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 876
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 886
    :cond_0
    :goto_0
    return-object v2

    .line 879
    :cond_1
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 880
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->removeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, "word":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 883
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 884
    .local v0, "length":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 886
    .end local v0    # "length":I
    .end local v1    # "word":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isPngFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    :try_start_1
    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->isPngFormat(Lmiui/io/ResettableInputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 488
    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return v2

    .line 488
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 488
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static isPngFormat(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, "is":Lmiui/io/ResettableInputStream;
    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .local v1, "is":Lmiui/io/ResettableInputStream;
    :try_start_1
    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->isPngFormat(Lmiui/io/ResettableInputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 505
    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    return v2

    .line 505
    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_1
    throw v2

    .line 505
    .end local v0    # "is":Lmiui/io/ResettableInputStream;
    .restart local v1    # "is":Lmiui/io/ResettableInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Lmiui/io/ResettableInputStream;
    .restart local v0    # "is":Lmiui/io/ResettableInputStream;
    goto :goto_0
.end method

.method public static isPngFormat(Lmiui/io/ResettableInputStream;)Z
    .locals 4
    .param p0, "is"    # Lmiui/io/ResettableInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, "ret":Z
    sget-object v3, Lmiui/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v3, v3

    new-array v0, v3, [B

    .line 519
    .local v0, "head":[B
    invoke-virtual {p0, v0}, Lmiui/io/ResettableInputStream;->read([B)I

    move-result v1

    .line 520
    .local v1, "n":I
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 521
    invoke-static {v0}, Lmiui/graphics/BitmapFactory;->isPngFormat([B)Z

    move-result v2

    .line 523
    :cond_0
    return v2
.end method

.method private static isPngFormat([B)Z
    .locals 4
    .param p0, "pngHead"    # [B

    .prologue
    const/4 v1, 0x0

    .line 527
    if-eqz p0, :cond_0

    array-length v2, p0

    sget-object v3, Lmiui/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v1

    .line 530
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lmiui/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 531
    aget-byte v2, p0, v0

    sget-object v3, Lmiui/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 535
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "mask"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "srcRect"    # Landroid/graphics/Rect;
    .param p4, "destRect"    # Landroid/graphics/Rect;

    .prologue
    .line 770
    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 771
    const/16 v17, 0x0

    .line 814
    :goto_0
    return-object v17

    .line 774
    :cond_0
    if-nez p2, :cond_7

    .line 775
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v17

    if-lez v17, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v17

    if-gtz v17, :cond_2

    .line 776
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 783
    :cond_3
    :goto_1
    invoke-static {}, Lmiui/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    .line 784
    .local v5, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 785
    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 787
    if-eqz p1, :cond_4

    .line 788
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 789
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 792
    :cond_4
    if-nez p3, :cond_6

    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 794
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 795
    .local v9, "height":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 796
    .local v7, "destWidth":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 797
    .local v6, "destHeight":I
    const/4 v10, 0x0

    .local v10, "left":I
    const/4 v14, 0x0

    .line 798
    .local v14, "top":I
    int-to-float v0, v6

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 799
    .local v11, "ratio":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    div-float v13, v17, v18

    .line 800
    .local v13, "scaleW":F
    int-to-float v0, v9

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 801
    .local v12, "scaleH":F
    cmpl-float v17, v13, v12

    if-lez v17, :cond_8

    .line 802
    int-to-float v0, v9

    move/from16 v17, v0

    div-float v17, v17, v11

    move/from16 v0, v17

    float-to-int v15, v0

    .line 803
    .local v15, "w":I
    sub-int v17, v16, v15

    div-int/lit8 v10, v17, 0x2

    .line 804
    move/from16 v16, v15

    .line 810
    .end local v15    # "w":I
    :cond_5
    :goto_2
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "srcRect":Landroid/graphics/Rect;
    add-int v17, v10, v16

    add-int v18, v14, v9

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v10, v14, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 813
    .end local v6    # "destHeight":I
    .end local v7    # "destWidth":I
    .end local v9    # "height":I
    .end local v10    # "left":I
    .end local v11    # "ratio":F
    .end local v12    # "scaleH":F
    .end local v13    # "scaleW":F
    .end local v14    # "top":I
    .end local v16    # "width":I
    .restart local p3    # "srcRect":Landroid/graphics/Rect;
    :cond_6
    sget-object v17, Lmiui/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v17

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v17, p2

    .line 814
    goto/16 :goto_0

    .line 779
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_7
    if-nez p4, :cond_3

    .line 780
    new-instance p4, Landroid/graphics/Rect;

    .end local p4    # "destRect":Landroid/graphics/Rect;
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local p4    # "destRect":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 805
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    .restart local v6    # "destHeight":I
    .restart local v7    # "destWidth":I
    .restart local v9    # "height":I
    .restart local v10    # "left":I
    .restart local v11    # "ratio":F
    .restart local v12    # "scaleH":F
    .restart local v13    # "scaleW":F
    .restart local v14    # "top":I
    .restart local v16    # "width":I
    :cond_8
    cmpg-float v17, v13, v12

    if-gez v17, :cond_5

    .line 806
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v11

    move/from16 v0, v17

    float-to-int v8, v0

    .line 807
    .local v8, "h":I
    sub-int v17, v9, v8

    div-int/lit8 v14, v17, 0x2

    .line 808
    move v9, v8

    goto :goto_2
.end method

.method private static native native_fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method private static removeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 925
    move-object v3, p0

    .line 926
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 927
    const/4 v4, 0x0

    .line 954
    :goto_0
    return-object v4

    .line 928
    :cond_0
    const/4 v1, 0x0

    .line 930
    .local v1, "found":Z
    :cond_1
    const/4 v1, 0x0

    .line 931
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v4, Lmiui/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 932
    sget-object v4, Lmiui/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 933
    const/4 v1, 0x1

    .line 934
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lmiui/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 943
    :cond_2
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 946
    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 947
    :cond_4
    if-eqz v3, :cond_5

    .line 948
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 951
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 952
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object v4, v3

    .line 954
    goto :goto_0

    .line 936
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 938
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 939
    const/4 v1, 0x1

    .line 940
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 931
    .end local v0    # "c":C
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/graphics/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "saveToPng"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    if-eqz p0, :cond_3

    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_1

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 469
    :cond_0
    const/4 v2, 0x1

    .line 471
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return v2

    .line 463
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 465
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v2

    .line 471
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 465
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I

    .prologue
    .line 307
    if-nez p0, :cond_0

    .line 308
    const/4 v1, 0x0

    .line 324
    :goto_0
    return-object v1

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 313
    move-object v1, p0

    .local v1, "destBmp":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 315
    .end local v1    # "destBmp":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 316
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 317
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 319
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 321
    .restart local v1    # "destBmp":Landroid/graphics/Bitmap;
    invoke-static {p0, v1}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "dstBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 336
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 337
    :cond_0
    const/4 v2, 0x0

    .line 353
    :goto_0
    return-object v2

    .line 339
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 340
    move-object p1, p0

    :goto_1
    move-object v2, p1

    .line 353
    goto :goto_0

    .line 342
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 343
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 345
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 346
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 347
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 348
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 350
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method
