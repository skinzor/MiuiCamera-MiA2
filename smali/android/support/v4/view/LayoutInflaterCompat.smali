.class public final Landroid/support/v4/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatApi21Impl;,
        Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 141
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->IMPL:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;

    .line 33
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->IMPL:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 6
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    const/4 v5, 0x1

    .line 71
    sget-boolean v2, Landroid/support/v4/view/LayoutInflaterCompat;->sCheckedField:Z

    if-nez v2, :cond_0

    .line 73
    :try_start_0
    const-class v2, Landroid/view/LayoutInflater;

    const-string/jumbo v3, "mFactory2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    .line 74
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    sput-boolean v5, Landroid/support/v4/view/LayoutInflaterCompat;->sCheckedField:Z

    .line 82
    :cond_0
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 84
    :try_start_1
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :cond_1
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "LayoutInflaterCompatHC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 77
    const-class v4, Landroid/view/LayoutInflater;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    const-string/jumbo v4, "; inflation may have unexpected results."

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "LayoutInflaterCompatHC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    const-string/jumbo v4, "; inflation may have unexpected results."

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 178
    sget-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->IMPL:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 179
    return-void
.end method
