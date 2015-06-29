.class public Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;
.super Lcom/miui/internal/variable/Android_Preference_Preference_class;
.source "Android_Preference_Preference_class.java"


# static fields
.field private static final mPreferenceScreen:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "mPreferenceScreen"

    const-string v2, "Landroid/preference/PreferenceScreen;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mPreferenceScreen:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 28
    .local v1, "preferenceManager":Landroid/preference/PreferenceManager;
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mPreferenceScreen:Lmiui/reflect/Field;

    invoke-virtual {v2, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1    # "preferenceManager":Landroid/preference/PreferenceManager;
    :goto_0
    return-object v2

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "mPreferenceScreen"

    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v2, 0x0

    goto :goto_0
.end method
