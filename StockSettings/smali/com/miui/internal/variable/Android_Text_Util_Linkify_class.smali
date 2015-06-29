.class public abstract Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_Text_Util_Linkify_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$1;,
        Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy",
        "<",
        "Landroid/text/util/Linkify;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field public static TIME_PHRASES:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x10

    sput v0, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->TIME_PHRASES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Landroid/text/util/Linkify;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 56
    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "gatherLinks"

    const-string v1, "(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 63
    return-void
.end method

.method protected handle()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 67
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v1 .. v10}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->handleGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 68
    return-void
.end method

.method protected handleGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/text/util/Linkify;
    .param p4, "links"    # Ljava/util/ArrayList;
    .param p5, "s"    # Landroid/text/Spannable;
    .param p6, "pattern"    # Ljava/util/regex/Pattern;
    .param p7, "schemes"    # [Ljava/lang/String;
    .param p8, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p9, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    .line 73
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    if-ne p6, v0, :cond_0

    .line 74
    sget-object p6, Lmiui/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 76
    :cond_0
    invoke-virtual/range {p0 .. p9}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->originalGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 77
    return-void
.end method

.method protected originalGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/text/util/Linkify;
    .param p4, "links"    # Ljava/util/ArrayList;
    .param p5, "s"    # Landroid/text/Spannable;
    .param p6, "pattern"    # Ljava/util/regex/Pattern;
    .param p7, "schemes"    # [Ljava/lang/String;
    .param p8, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p9, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.Android_Text_Util_Linkify_class.originalGatherLinks(long, Linkify, ArrayList, Spannable, Pattern, String[], MatchFilter, TransformFilter)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
