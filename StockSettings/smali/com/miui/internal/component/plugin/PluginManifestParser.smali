.class public Lcom/miui/internal/component/plugin/PluginManifestParser;
.super Ljava/lang/Object;
.source "PluginManifestParser.java"


# static fields
.field protected static final ATTR_GROUP:Ljava/lang/String; = "group"

.field protected static final ATTR_LEVEL:Ljava/lang/String; = "level"

.field protected static final ATTR_LOCATION:Ljava/lang/String; = "location"

.field protected static final ATTR_MIN_CAPATIBLE_LEVEL:Ljava/lang/String; = "minCapatibleLevel"

.field protected static final ATTR_MIN_LEVEL:Ljava/lang/String; = "minLevel"

.field protected static final ATTR_NAME:Ljava/lang/String; = "name"

.field protected static final ATTR_OPTIONAL:Ljava/lang/String; = "optional"

.field protected static final ATTR_RESOURCES:Ljava/lang/String; = "resources"

.field protected static final ATTR_TARGET_LEVEL:Ljava/lang/String; = "targetLevel"

.field protected static final ATTR_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field protected static final ATTR_VERSION_NAME:Ljava/lang/String; = "versionName"

.field protected static final ATTR_VISIBILITY:Ljava/lang/String; = "visibility"

.field protected static final ELEMENT_ACTIVITY_EXTENSION:Ljava/lang/String; = "activity-extension"

.field protected static final ELEMENT_ACTIVITY_OUTLET:Ljava/lang/String; = "activity-outlet"

.field protected static final ELEMENT_DEPENDENCIES:Ljava/lang/String; = "dependencies"

.field protected static final ELEMENT_DEPENDENCY:Ljava/lang/String; = "dependency"

.field protected static final ELEMENT_EXTENSIONS:Ljava/lang/String; = "extensions"

.field protected static final ELEMENT_FUNCTION_EXTENSION:Ljava/lang/String; = "function-extension"

.field protected static final ELEMENT_FUNCTION_OUTLET:Ljava/lang/String; = "function-outlet"

.field protected static final ELEMENT_OUTLETS:Ljava/lang/String; = "outlets"

.field protected static final ELEMENT_PLUGIN:Ljava/lang/String; = "plugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/AccessPermission;)Lcom/miui/internal/component/plugin/AccessPermission;
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Lcom/miui/internal/component/plugin/AccessPermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p3}, Lcom/miui/internal/component/plugin/AccessPermission;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/component/plugin/AccessPermission;->valueOf(Ljava/lang/String;)Lcom/miui/internal/component/plugin/AccessPermission;

    move-result-object v0

    return-object v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/Demand;)Lcom/miui/internal/component/plugin/Demand;
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Lcom/miui/internal/component/plugin/Demand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p3}, Lcom/miui/internal/component/plugin/Demand;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/component/plugin/Demand;->valueOf(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Demand;

    move-result-object v0

    return-object v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    :cond_0
    if-eqz p3, :cond_1

    .line 86
    new-instance v1, Lcom/miui/internal/component/plugin/PluginParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_1
    move-object v0, p4

    .line 91
    :cond_2
    return-object v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private handleDependenciesElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .locals 10
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "plugin"    # Lcom/miui/internal/component/plugin/Plugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 145
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 146
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 147
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 148
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, v7, :cond_0

    move-object v2, v4

    .line 149
    check-cast v2, Lorg/w3c/dom/Element;

    .line 150
    .local v2, "e":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "tag":Ljava/lang/String;
    const-string v6, "dependency"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    new-instance v1, Lcom/miui/internal/component/plugin/Dependency;

    invoke-direct {v1}, Lcom/miui/internal/component/plugin/Dependency;-><init>()V

    .line 153
    .local v1, "dependency":Lcom/miui/internal/component/plugin/Dependency;
    const-string v6, "name"

    invoke-direct {p0, v2, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/miui/internal/component/plugin/Dependency;->setName(Ljava/lang/String;)V

    .line 154
    const-string v6, "resources"

    sget-object v9, Lcom/miui/internal/component/plugin/Demand;->PROHIBITED:Lcom/miui/internal/component/plugin/Demand;

    invoke-direct {p0, v2, v6, v9}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/Demand;)Lcom/miui/internal/component/plugin/Demand;

    move-result-object v6

    sget-object v9, Lcom/miui/internal/component/plugin/Demand;->REQUIRED:Lcom/miui/internal/component/plugin/Demand;

    if-ne v6, v9, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v1, v6}, Lcom/miui/internal/component/plugin/Dependency;->setResourcesRequired(Z)V

    .line 155
    const-string v6, "optional"

    invoke-direct {p0, v2, v6, v8}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/miui/internal/component/plugin/Dependency;->setOptional(Z)V

    .line 156
    const-string v6, "minLevel"

    invoke-direct {p0, v2, v6, v8}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/miui/internal/component/plugin/Dependency;->setMinLevel(I)V

    .line 157
    const-string v6, "targetLevel"

    invoke-direct {p0, v2, v6, v8}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/miui/internal/component/plugin/Dependency;->setTargetLevel(I)V

    .line 158
    invoke-virtual {p2, v1}, Lcom/miui/internal/component/plugin/Plugin;->addDependency(Lcom/miui/internal/component/plugin/Dependency;)V

    .line 146
    .end local v1    # "dependency":Lcom/miui/internal/component/plugin/Dependency;
    .end local v2    # "e":Lorg/w3c/dom/Element;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v1    # "dependency":Lcom/miui/internal/component/plugin/Dependency;
    .restart local v2    # "e":Lorg/w3c/dom/Element;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 154
    goto :goto_1

    .line 162
    .end local v1    # "dependency":Lcom/miui/internal/component/plugin/Dependency;
    .end local v2    # "e":Lorg/w3c/dom/Element;
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private handleExtensionsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .locals 8
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "plugin"    # Lcom/miui/internal/component/plugin/Plugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 166
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 167
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 168
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v1, v4

    .line 169
    check-cast v1, Lorg/w3c/dom/Element;

    .line 170
    .local v1, "e":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "tag":Ljava/lang/String;
    const-string v6, "activity-extension"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "function-extension"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    :cond_0
    new-instance v2, Lcom/miui/internal/component/plugin/Extension;

    invoke-direct {v2}, Lcom/miui/internal/component/plugin/Extension;-><init>()V

    .line 173
    .local v2, "extension":Lcom/miui/internal/component/plugin/Extension;
    const-string v6, "name"

    invoke-direct {p0, v1, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/internal/component/plugin/Extension;->setName(Ljava/lang/String;)V

    .line 174
    const-string v6, "location"

    invoke-direct {p0, v1, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/internal/component/plugin/Extension;->setLocation(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2, v2}, Lcom/miui/internal/component/plugin/Plugin;->addExtension(Lcom/miui/internal/component/plugin/Extension;)V

    .line 166
    .end local v1    # "e":Lorg/w3c/dom/Element;
    .end local v2    # "extension":Lcom/miui/internal/component/plugin/Extension;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return-void
.end method

.method private handleOutletsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .locals 8
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "plugin"    # Lcom/miui/internal/component/plugin/Plugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 183
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 184
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 185
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v1, v3

    .line 186
    check-cast v1, Lorg/w3c/dom/Element;

    .line 187
    .local v1, "e":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "tag":Ljava/lang/String;
    const-string v6, "activity-outlet"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "function-outlet"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    :cond_0
    new-instance v4, Lcom/miui/internal/component/plugin/Outlet;

    invoke-direct {v4}, Lcom/miui/internal/component/plugin/Outlet;-><init>()V

    .line 190
    .local v4, "outlet":Lcom/miui/internal/component/plugin/Outlet;
    const-string v6, "name"

    invoke-direct {p0, v1, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/internal/component/plugin/Outlet;->setName(Ljava/lang/String;)V

    .line 191
    const-string v6, "visibility"

    sget-object v7, Lcom/miui/internal/component/plugin/AccessPermission;->PUBLIC:Lcom/miui/internal/component/plugin/AccessPermission;

    invoke-direct {p0, p1, v6, v7}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/AccessPermission;)Lcom/miui/internal/component/plugin/AccessPermission;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/internal/component/plugin/Outlet;->setVisibility(Lcom/miui/internal/component/plugin/AccessPermission;)V

    .line 192
    invoke-virtual {p2, v4}, Lcom/miui/internal/component/plugin/Plugin;->addOutlet(Lcom/miui/internal/component/plugin/Outlet;)V

    .line 183
    .end local v1    # "e":Lorg/w3c/dom/Element;
    .end local v4    # "outlet":Lcom/miui/internal/component/plugin/Outlet;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return-void
.end method

.method private handlePluginElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .locals 7
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "plugin"    # Lcom/miui/internal/component/plugin/Plugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 120
    const-string v5, "name"

    invoke-direct {p0, p1, v5}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/miui/internal/component/plugin/Plugin;->setName(Ljava/lang/String;)V

    .line 121
    const-string v5, "group"

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/miui/internal/component/plugin/Plugin;->setGroup(Ljava/lang/String;)V

    .line 122
    const-string v5, "versionCode"

    const/4 v6, 0x0

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/miui/internal/component/plugin/Plugin;->setVersionCode(I)V

    .line 123
    const-string v5, "versionName"

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/miui/internal/component/plugin/Plugin;->setVersionName(Ljava/lang/String;)V

    .line 124
    const-string v5, "level"

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getVersionCode()I

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/miui/internal/component/plugin/Plugin;->setLevel(I)V

    .line 125
    const-string v5, "minCapatibleLevel"

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getLevel()I

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/miui/internal/component/plugin/Plugin;->setMinCapatibleLevel(I)V

    .line 126
    const-string v5, "resources"

    sget-object v6, Lcom/miui/internal/component/plugin/AccessPermission;->PRIVATE:Lcom/miui/internal/component/plugin/AccessPermission;

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/AccessPermission;)Lcom/miui/internal/component/plugin/AccessPermission;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/miui/internal/component/plugin/Plugin;->setResources(Lcom/miui/internal/component/plugin/AccessPermission;)V

    .line 127
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 128
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 129
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 130
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v1, v3

    .line 131
    check-cast v1, Lorg/w3c/dom/Element;

    .line 132
    .local v1, "e":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "tag":Ljava/lang/String;
    const-string v5, "dependencies"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    invoke-direct {p0, v1, p2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handleDependenciesElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V

    .line 128
    .end local v1    # "e":Lorg/w3c/dom/Element;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .restart local v1    # "e":Lorg/w3c/dom/Element;
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_1
    const-string v5, "extensions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    invoke-direct {p0, v1, p2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handleExtensionsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V

    goto :goto_1

    .line 137
    :cond_2
    const-string v5, "outlets"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    invoke-direct {p0, v1, p2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handleOutletsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V

    goto :goto_1

    .line 142
    .end local v1    # "e":Lorg/w3c/dom/Element;
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public parsePlugin(Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;
    .locals 1
    .param p1, "manifest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->parsePlugin(Ljava/io/InputStream;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object v0

    return-object v0
.end method

.method public parsePlugin(Ljava/io/InputStream;)Lcom/miui/internal/component/plugin/Plugin;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v4, Lcom/miui/internal/component/plugin/Plugin;

    invoke-direct {v4}, Lcom/miui/internal/component/plugin/Plugin;-><init>()V

    .line 64
    .local v4, "plugin":Lcom/miui/internal/component/plugin/Plugin;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 65
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 66
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 67
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handlePluginElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    return-object v4

    .line 68
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 70
    new-instance v5, Lcom/miui/internal/component/plugin/PluginParseException;

    invoke-direct {v5}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>()V

    throw v5

    .line 71
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 72
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 73
    new-instance v5, Lcom/miui/internal/component/plugin/PluginParseException;

    invoke-direct {v5}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>()V

    throw v5

    .line 74
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    new-instance v5, Lcom/miui/internal/component/plugin/PluginParseException;

    invoke-direct {v5}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>()V

    throw v5
.end method
