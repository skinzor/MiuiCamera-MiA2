.class Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;
.super Ljava/lang/Object;
.source "V6GestureRecognizer.java"

# interfaces
.implements Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEdgeGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6GestureRecognizer;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6GestureRecognizer;
    .param p2, "-this1"    # Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method
