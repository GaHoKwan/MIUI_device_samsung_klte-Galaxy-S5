.class Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory$Holder;
.super Ljava/lang/Object;
.source "Android_App_ActivityThread_class.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;-><init>(Lcom/miui/internal/variable/Android_App_ActivityThread_class$1;)V

    sput-object v0, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory$Holder;->INSTANCE:Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
