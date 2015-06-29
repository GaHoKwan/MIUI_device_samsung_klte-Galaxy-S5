.class public final Lcom/miui/internal/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static abc_action_bar_expanded_action_views_exclusive:I

.field public static abc_config_allowActionMenuItemTextWithIcon:I

.field public static abc_config_showMenuShortcutsWhenKeyboardPresent:I

.field public static abc_split_action_bar_is_narrow:I

.field public static action_bar_embed_tabs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1055
    const v0, 0x8090005

    sput v0, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    .line 1060
    const v0, 0x8090001

    sput v0, Lcom/miui/internal/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    .line 1063
    const v0, 0x8090007

    sput v0, Lcom/miui/internal/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 1066
    const v0, 0x8090006

    sput v0, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    .line 1070
    const v0, 0x8090003

    sput v0, Lcom/miui/internal/R$bool;->action_bar_embed_tabs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
