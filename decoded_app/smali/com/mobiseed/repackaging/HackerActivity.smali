.class public Lcom/mobiseed/repackaging/HackerActivity;
.super Landroid/app/Activity;
.source "HackerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400ff

    invoke-virtual {p0, v0}, Lcom/mobiseed/repackaging/HackerActivity;->setContentView(I)V

    return-void
.end method