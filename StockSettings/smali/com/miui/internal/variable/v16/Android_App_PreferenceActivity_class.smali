.class public Lcom/miui/internal/variable/v16/Android_App_PreferenceActivity_class;
.super Lcom/miui/internal/variable/Android_App_PreferenceActivity_class;
.source "Android_App_PreferenceActivity_class.java"


# static fields
.field private static final ID_HEADERS:Ljava/lang/String; = "headers"

.field private static final ID_PREFS_FRAME:Ljava/lang/String; = "prefs_frame"

.field private static final PACKAGE_ANDROID:Ljava/lang/String; = "android"

.field private static final TYPE_ID:Ljava/lang/String; = "id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_PreferenceActivity_class;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "headers"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 26
    .local v1, "headersId":I
    if-lez v1, :cond_0

    .line 27
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "headers":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    .end local v0    # "headers":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "prefs_frame"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 36
    .local v3, "prefsFrameId":I
    if-lez v3, :cond_1

    .line 37
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, "prefsFrame":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    .end local v2    # "prefsFrame":Landroid/view/View;
    :cond_1
    return-void
.end method
