.class public Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OutsideCompoundDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static ATTR_DRAWABLE:I


# instance fields
.field private mBase:Landroid/graphics/drawable/Drawable;

.field private mTop:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->ATTR_DRAWABLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    sget v2, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->ATTR_DRAWABLE:I

    if-nez v2, :cond_0

    .line 45
    :try_start_0
    const-string v2, "com.android.internal.R$attr"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "drawable"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 47
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->ATTR_DRAWABLE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 250
    :goto_0
    return v0

    .line 249
    :cond_0
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 14
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    add-int/lit8 v6, v11, 0x1

    .line 65
    .local v6, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_9

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    if-ge v1, v6, :cond_1

    const/4 v11, 0x3

    if-eq v10, v11, :cond_9

    .line 67
    :cond_1
    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 71
    if-gt v1, v6, :cond_0

    .line 75
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 78
    .local v4, "drawable_type":I
    const-string v11, "item-top"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 79
    const/4 v4, 0x0

    .line 88
    :goto_1
    const/4 v3, 0x0

    .line 91
    .local v3, "drawableRes":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 92
    .local v8, "numAttrs":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v8, :cond_2

    .line 93
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v9

    .line 94
    .local v9, "stateResId":I
    if-nez v9, :cond_4

    .line 102
    .end local v9    # "stateResId":I
    :cond_2
    :goto_3
    if-eqz v3, :cond_6

    .line 103
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :goto_4
    if-eqz v2, :cond_0

    .line 117
    if-nez v4, :cond_8

    .line 118
    iput-object v2, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v11, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 81
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawableRes":I
    .end local v5    # "i":I
    .end local v8    # "numAttrs":I
    :cond_3
    const-string v11, "item-base"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 82
    const/4 v4, 0x1

    goto :goto_1

    .line 95
    .restart local v3    # "drawableRes":I
    .restart local v5    # "i":I
    .restart local v8    # "numAttrs":I
    .restart local v9    # "stateResId":I
    :cond_4
    sget v11, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->ATTR_DRAWABLE:I

    if-ne v9, v11, :cond_5

    .line 96
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v11}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v3

    .line 97
    goto :goto_3

    .line 92
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 105
    .end local v9    # "stateResId":I
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    .line 107
    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    .line 108
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "child tag defining a drawable"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 113
    :cond_7
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 121
    :cond_8
    const/4 v11, 0x1

    if-ne v4, v11, :cond_0

    .line 122
    iput-object v2, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v11, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_0

    .line 127
    .end local v1    # "depth":I
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawableRes":I
    .end local v4    # "drawable_type":I
    .end local v5    # "i":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "numAttrs":I
    :cond_9
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 213
    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    .line 198
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    .line 202
    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    .line 196
    goto :goto_0

    :cond_5
    move v0, v1

    .line 199
    goto :goto_1
.end method

.method public onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    .line 185
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    .line 189
    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    .line 183
    goto :goto_0

    :cond_5
    move v0, v1

    .line 186
    goto :goto_1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 266
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 167
    :cond_1
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 147
    .local v0, "height":I
    if-gtz v0, :cond_1

    .line 148
    const/4 v0, 0x1

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v2, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    .end local v0    # "height":I
    :cond_2
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 223
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 273
    :cond_0
    return-void
.end method
