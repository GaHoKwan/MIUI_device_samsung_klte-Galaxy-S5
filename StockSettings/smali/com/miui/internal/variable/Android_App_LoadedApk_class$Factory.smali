.class public Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "Android_App_LoadedApk_class.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_App_LoadedApk_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Android_App_LoadedApk_class:Lcom/miui/internal/variable/Android_App_LoadedApk_class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory$1;

    invoke-direct {v0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory$1;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    .line 30
    const-string v0, "Android_App_LoadedApk_class"

    .line 31
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/variable/Android_App_LoadedApk_class;

    iput-object v1, p0, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->Android_App_LoadedApk_class:Lcom/miui/internal/variable/Android_App_LoadedApk_class;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_App_LoadedApk_class$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/variable/Android_App_LoadedApk_class$1;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_App_LoadedApk_class;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->Android_App_LoadedApk_class:Lcom/miui/internal/variable/Android_App_LoadedApk_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->get()Lcom/miui/internal/variable/Android_App_LoadedApk_class;

    move-result-object v0

    return-object v0
.end method
