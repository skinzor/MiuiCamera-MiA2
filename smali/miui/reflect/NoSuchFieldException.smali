.class public Lmiui/reflect/NoSuchFieldException;
.super Lmiui/reflect/ReflectionException;
.source "NoSuchFieldException.java"


# static fields
.field private static final serialVersionUID:J = -0x61a0f9b8f5cb7c1fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmiui/reflect/ReflectionException;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lmiui/reflect/ReflectionException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
