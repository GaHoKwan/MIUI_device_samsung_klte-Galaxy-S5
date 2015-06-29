.class public abstract Lcom/miui/internal/core/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.java"


# static fields
.field private static final MIUI_CORE_SERVICE:Ljava/lang/String; = "com.miui.internal.server.CoreService"

.field public static final RETURN_CODE_LOW_SDK_VERSION:I = 0x1

.field public static final RETURN_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "miuisdk"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static buildProxy()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_Resources_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->buildProxy()V

    .line 97
    invoke-static {}, Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;->get()Lcom/miui/internal/variable/Android_App_AlertDialog_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_class;->buildProxy()V

    .line 98
    invoke-static {}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;->get()Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class;->buildProxy()V

    .line 100
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class;->buildProxy()V

    .line 101
    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->buildProxy()V

    .line 103
    invoke-static {}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_Preference_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->buildProxy()V

    .line 104
    invoke-static {}, Lcom/miui/internal/variable/Android_Preference_PreferenceScreen_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Preference_PreferenceScreen_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_PreferenceScreen_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_PreferenceScreen_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_PreferenceScreen_class;->buildProxy()V

    .line 105
    invoke-static {}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->buildProxy()V

    .line 107
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_RemoteViews_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;->buildProxy()V

    .line 108
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_AbsListView_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_AbsListView_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsListView_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_AbsListView_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsListView_class;->buildProxy()V

    .line 109
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_ListView_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListView_class;->buildProxy()V

    .line 110
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_GridView_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_GridView_class;->buildProxy()V

    .line 111
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;->buildProxy()V

    .line 112
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;->buildProxy()V

    .line 113
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_Spinner_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->buildProxy()V

    .line 114
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->buildProxy()V

    .line 116
    invoke-static {}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;->get()Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->buildProxy()V

    .line 118
    invoke-static {}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;->get()Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->buildProxy()V

    .line 119
    return-void
.end method

.method public static initialize(Landroid/app/Application;Ljava/util/Map;)I
    .locals 4
    .param p0, "app"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 73
    const-class v1, Lcom/miui/internal/core/SdkManager;

    monitor-enter v1

    .line 74
    :try_start_0
    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-lt v0, v2, :cond_0

    .line 75
    const-string v0, "miuisdk"

    const-string v2, "sdk already initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit v1

    .line 90
    :goto_0
    return v3

    .line 79
    :cond_0
    sput-object p0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    .line 81
    invoke-static {}, Lcom/miui/internal/util/PackageHelper;->isMiuiSystem()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    instance-of v0, v0, Lcom/miui/internal/app/MiuiApplication;

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/component/ComponentManager;->loadResource(Ljava/lang/String;)V

    .line 85
    :cond_1
    invoke-static {}, Lcom/miui/internal/core/SdkManager;->buildProxy()V

    .line 87
    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge v0, v2, :cond_2

    .line 88
    const/4 v0, 0x2

    sput v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    .line 90
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isCompatible(Landroid/content/Context;Lcom/miui/internal/core/Manifest;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manifest"    # Lcom/miui/internal/core/Manifest;

    .prologue
    .line 156
    new-instance v0, Lcom/miui/internal/core/CompatibleManager;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/core/CompatibleManager;-><init>(Landroid/content/Context;Lcom/miui/internal/core/Manifest;)V

    .line 157
    .local v0, "manager":Lcom/miui/internal/core/CompatibleManager;
    invoke-virtual {v0}, Lcom/miui/internal/core/CompatibleManager;->isCompatible()Z

    move-result v1

    return v1
.end method

.method private static loadComponents(Lcom/miui/internal/core/Manifest;)V
    .locals 0
    .param p0, "manifest"    # Lcom/miui/internal/core/Manifest;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/miui/internal/component/ComponentManager;->load(Lcom/miui/internal/core/Manifest;)V

    .line 162
    return-void
.end method

.method public static start(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x3

    .line 130
    const-class v2, Lcom/miui/internal/core/SdkManager;

    monitor-enter v2

    .line 131
    :try_start_0
    sget v1, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-lt v1, v4, :cond_0

    .line 132
    const-string v1, "miuisdk"

    const-string v3, "sdk already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/miui/internal/core/ManifestParser;->create(Landroid/content/Context;)Lcom/miui/internal/core/ManifestParser;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/internal/core/ManifestParser;->parse(Ljava/util/Map;)Lcom/miui/internal/core/Manifest;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/util/PackageConstants;->sManifest:Lcom/miui/internal/core/Manifest;

    .line 137
    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    instance-of v1, v1, Lcom/miui/internal/app/MiuiApplication;

    if-nez v1, :cond_1

    .line 138
    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    sget-object v3, Lcom/miui/internal/util/PackageConstants;->sManifest:Lcom/miui/internal/core/Manifest;

    invoke-static {v1, v3}, Lcom/miui/internal/core/SdkManager;->isCompatible(Landroid/content/Context;Lcom/miui/internal/core/Manifest;)Z

    move-result v0

    .line 139
    .local v0, "compatible":Z
    if-nez v0, :cond_1

    .line 140
    const/4 v1, 0x1

    monitor-exit v2

    .line 151
    .end local v0    # "compatible":Z
    :goto_0
    return v1

    .line 144
    :cond_1
    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sManifest:Lcom/miui/internal/core/Manifest;

    invoke-static {v1}, Lcom/miui/internal/core/SdkManager;->loadComponents(Lcom/miui/internal/core/Manifest;)V

    .line 146
    invoke-static {}, Lcom/miui/internal/core/SdkManager;->startService()V

    .line 148
    sget v1, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge v1, v4, :cond_2

    .line 149
    const/4 v1, 0x3

    sput v1, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    .line 151
    :cond_2
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static startService()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/internal/core/SdkManager$1;

    invoke-direct {v1}, Lcom/miui/internal/core/SdkManager$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method public static supportUpdate(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public static update(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method
