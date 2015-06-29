.class public Lcom/miui/internal/variable/v16/Android_View_View_class;
.super Lcom/miui/internal/variable/Android_View_View_class;
.source "Android_View_View_class.java"


# static fields
.field private static ListenerInfoClass:Ljava/lang/Class;

.field private static final getContextMenuInfo:Lmiui/reflect/Method;

.field private static final mKeyedTags:Lmiui/reflect/Field;

.field private static final mLeft:Lmiui/reflect/Field;

.field private static final mListenerInfo:Lmiui/reflect/Field;

.field private static final mOldHeightMeasureSpec:Lmiui/reflect/Field;

.field private static final mOldWidthMeasureSpec:Lmiui/reflect/Field;

.field private static mOnCreateContextMenuListener:Lmiui/reflect/Field;

.field private static final mPrivateFlags:Lmiui/reflect/Field;

.field private static final mRight:Lmiui/reflect/Field;

.field private static final mScrollX:Lmiui/reflect/Field;

.field private static final mScrollY:Lmiui/reflect/Field;

.field private static final onCreateContextMenu:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Landroid/view/View;

    const-string v1, "mPrivateFlags"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mPrivateFlags:Lmiui/reflect/Field;

    .line 28
    const-class v0, Landroid/view/View;

    const-string v1, "mOldWidthMeasureSpec"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mOldWidthMeasureSpec:Lmiui/reflect/Field;

    .line 31
    const-class v0, Landroid/view/View;

    const-string v1, "mOldHeightMeasureSpec"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mOldHeightMeasureSpec:Lmiui/reflect/Field;

    .line 34
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollX"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mScrollX:Lmiui/reflect/Field;

    .line 36
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollY"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mScrollY:Lmiui/reflect/Field;

    .line 38
    const-class v0, Landroid/view/View;

    const-string v1, "mLeft"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mLeft:Lmiui/reflect/Field;

    .line 40
    const-class v0, Landroid/view/View;

    const-string v1, "mRight"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mRight:Lmiui/reflect/Field;

    .line 42
    const-class v0, Landroid/view/View;

    const-string v1, "getContextMenuInfo"

    const-string v2, "()Landroid/view/ContextMenu$ContextMenuInfo;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->getContextMenuInfo:Lmiui/reflect/Method;

    .line 45
    const-class v0, Landroid/view/View;

    const-string v1, "onCreateContextMenu"

    const-string v2, "(Landroid/view/ContextMenu;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->onCreateContextMenu:Lmiui/reflect/Method;

    .line 48
    const-class v0, Landroid/view/View;

    const-string v1, "mListenerInfo"

    const-string v2, "Landroid/view/View$ListenerInfo;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mListenerInfo:Lmiui/reflect/Field;

    .line 51
    const-class v0, Landroid/view/View;

    const-string v1, "mKeyedTags"

    const-string v2, "Landroid/util/SparseArray;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mKeyedTags:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_View_class;-><init>()V

    return-void
.end method

.method private getOldHeightMeasureSpec(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->mOldHeightMeasureSpec:Lmiui/reflect/Field;

    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mOldHeightMeasureSpec"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOldWidthMeasureSpec(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->mOldWidthMeasureSpec:Lmiui/reflect/Field;

    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mOldWidthMeasureSpec"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPrivateFlags(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 169
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->mPrivateFlags:Lmiui/reflect/Field;

    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mPrivateFlags"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPrivateFlags(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .prologue
    .line 178
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->mPrivateFlags:Lmiui/reflect/Field;

    invoke-virtual {v1, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mPrivateFlags"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected attachSpecialMethods()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachConstructor(Ljava/lang/String;)J

    .line 78
    return-void
.end method

.method public buildProxy()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "refreshDrawableState"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 59
    const-string v0, "onCreateDrawableState"

    const-string v1, "(I)[I"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 60
    const-string v0, "createContextMenu"

    const-string v1, "(Landroid/view/ContextMenu;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 61
    const-string v0, "(Landroid/content/Context;)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachConstructor(Ljava/lang/String;)J

    .line 62
    const-string v0, "()V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachConstructor(Ljava/lang/String;)J

    .line 63
    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachSpecialMethods()V

    .line 64
    return-void
.end method

.method protected getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 255
    .local v2, "v":Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;
    :try_start_0
    sget-object v3, Lcom/miui/internal/variable/v16/Android_View_View_class;->mKeyedTags:Lmiui/reflect/Field;

    invoke-virtual {v3, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-object v2

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v3

    const-string v4, "android.view.View.mKeyedTags"

    invoke-virtual {v3, v4, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected handle()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 68
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handleRefreshDrawableState(JLandroid/view/View;)V

    .line 69
    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handleOnCreateDrawableState(JLandroid/view/View;I)[I

    .line 70
    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handleCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    .line 71
    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handle_init_(JLandroid/view/View;Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handle_init_(JLandroid/view/View;)V

    .line 74
    return-void
.end method

.method protected handleCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V
    .locals 9
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;
    .param p4, "contextMenu"    # Landroid/view/ContextMenu;

    .prologue
    const/4 v7, 0x0

    .line 131
    instance-of v4, p4, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-eqz v4, :cond_3

    .line 132
    sget-object v4, Lcom/miui/internal/variable/v16/Android_View_View_class;->ListenerInfoClass:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 134
    :try_start_0
    const-string v4, "android.view.View$ListenerInfo"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/miui/internal/variable/v16/Android_View_View_class;->ListenerInfoClass:Ljava/lang/Class;

    .line 135
    sget-object v4, Lcom/miui/internal/variable/v16/Android_View_View_class;->ListenerInfoClass:Ljava/lang/Class;

    const-string v5, "mOnCreateContextMenuListener"

    const-string v6, "Landroid/view/View$OnCreateContextMenuListener;"

    invoke-static {v4, v5, v6}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/miui/internal/variable/v16/Android_View_View_class;->mOnCreateContextMenuListener:Lmiui/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    sget-object v4, Lcom/miui/internal/variable/v16/Android_View_View_class;->getContextMenuInfo:Lmiui/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, p3, v6}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ContextMenu$ContextMenuInfo;

    move-object v3, v4

    check-cast v3, Landroid/view/ContextMenu$ContextMenuInfo;

    .local v3, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v4, p4

    .line 144
    check-cast v4, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v4, v3}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 145
    sget-object v4, Lcom/miui/internal/variable/v16/Android_View_View_class;->onCreateContextMenu:Lmiui/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p4, v6, v7

    invoke-virtual {v4, v5, p3, v6}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 146
    sget-object v4, Lcom/miui/internal/variable/v16/Android_View_View_class;->mListenerInfo:Lmiui/reflect/Field;

    invoke-virtual {v4, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    .local v2, "li":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 148
    sget-object v4, Lcom/miui/internal/variable/v16/Android_View_View_class;->mOnCreateContextMenuListener:Lmiui/reflect/Field;

    invoke-virtual {v4, v2}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnCreateContextMenuListener;

    .line 149
    .local v1, "l":Landroid/view/View$OnCreateContextMenuListener;
    if-eqz v1, :cond_1

    .line 150
    invoke-interface {v1, p4, p3, v3}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .end local v1    # "l":Landroid/view/View$OnCreateContextMenuListener;
    :cond_1
    move-object v4, p4

    .line 153
    check-cast v4, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 154
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 155
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, p4}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 160
    .end local v2    # "li":Ljava/lang/Object;
    .end local v3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_2
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->originalCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method protected handleOnCreateDrawableState(JLandroid/view/View;I)[I
    .locals 3
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;
    .param p4, "extraSpace"    # I

    .prologue
    .line 91
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->originalOnCreateDrawableState(JLandroid/view/View;I)[I

    move-result-object v0

    .line 92
    .local v0, "result":[I
    invoke-virtual {p0, p3, v0, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->onCreateDrawableState(Landroid/view/View;[II)[I

    move-result-object v1

    return-object v1
.end method

.method protected handleRefreshDrawableState(JLandroid/view/View;)V
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_View_View_class;->originalRefreshDrawableState(JLandroid/view/View;)V

    .line 82
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->onDrawableStateChange(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method protected handle_init_(JLandroid/view/View;)V
    .locals 3
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;

    .prologue
    .line 121
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/miui/internal/variable/v16/Android_View_View_class;->original_init_(JLandroid/view/View;)V

    .line 122
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mKeyedTags:Lmiui/reflect/Field;

    new-instance v1, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;-><init>(I)V

    invoke-virtual {v0, p3, v1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method protected handle_init_(JLandroid/view/View;Landroid/content/Context;)V
    .locals 3
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->original_init_(JLandroid/view/View;Landroid/content/Context;)V

    .line 112
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->mKeyedTags:Lmiui/reflect/Field;

    new-instance v1, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;-><init>(I)V

    invoke-virtual {v0, p3, v1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method protected handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "defStyle"    # I

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_View_class;->original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    invoke-static {p3, p5}, Lcom/miui/internal/util/TaggingDrawableHelper;->initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method protected originalCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;
    .param p4, "contextMenu"    # Landroid/view/ContextMenu;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalCreateContextMenu(long, View, ContextMenu)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalOnCreateDrawableState(JLandroid/view/View;I)[I
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;
    .param p4, "extraSpace"    # I

    .prologue
    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalOnCreateDrawableState(long, View, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalRefreshDrawableState(JLandroid/view/View;)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalRefreshDrawableState(long, View)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/view/View;)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/view/View;Landroid/content/Context;)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/view/View;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "defStyle"    # I

    .prologue
    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context, AttributeSet, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relayout(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->getPrivateFlags(Landroid/view/View;)I

    move-result v0

    .line 206
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 207
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->getOldWidthMeasureSpec(Landroid/view/View;)I

    move-result v2

    .line 208
    .local v2, "oldWidth":I
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->getOldHeightMeasureSpec(Landroid/view/View;)I

    move-result v1

    .line 209
    .local v1, "oldHeight":I
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->setPrivateFlags(Landroid/view/View;I)V

    .line 213
    .end local v0    # "flags":I
    .end local v1    # "oldHeight":I
    .end local v2    # "oldWidth":I
    :cond_0
    return-void
.end method

.method public setLeftDirectly(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I

    .prologue
    .line 236
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->mLeft:Lmiui/reflect/Field;

    invoke-virtual {v1, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollY"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setRightDirectly(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "right"    # I

    .prologue
    .line 245
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->mRight:Lmiui/reflect/Field;

    invoke-virtual {v1, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollY"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setScrollXDirectly(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollX"    # I

    .prologue
    .line 218
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->mScrollX:Lmiui/reflect/Field;

    invoke-virtual {v1, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollX"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setScrollYDirectly(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollY"    # I

    .prologue
    .line 227
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->mScrollY:Lmiui/reflect/Field;

    invoke-virtual {v1, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollY"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
