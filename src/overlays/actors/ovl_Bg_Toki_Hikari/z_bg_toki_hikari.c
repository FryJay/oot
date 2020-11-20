#include "z_bg_toki_hikari.h"

#define FLAGS 0x00000020

#define THIS ((BgTokiHikari*)thisx)

void BgTokiHikari_Init(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Update(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B9F98(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA204(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA018(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA22C(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA274(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA2CC(BgTokiHikari *this, GlobalContext *globalCtx);

extern Gfx D_06007E20[];
extern Gfx D_06008190[];
extern Gfx D_06007EE0[];
extern Gfx D_06008190[];
extern Gfx D_06000880[];
extern Gfx D_060009C0[];
extern Gfx D_06000A10[];

const ActorInit Bg_Toki_Hikari_InitVars = {
    ACTOR_BG_TOKI_HIKARI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(BgTokiHikari),
    (ActorFunc)BgTokiHikari_Init,
    (ActorFunc)BgTokiHikari_Destroy,
    (ActorFunc)BgTokiHikari_Update,
    (ActorFunc)BgTokiHikari_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgTokiHikari_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiHikari* this = THIS;

    switch (thisx->params) {
        case 0:
            Actor_ProcessInitChain(thisx, sInitChain);
            this->actionFunc = func_808B9F98;
            break;
        case 1:
            if ((gSaveContext.eventChkInf[4] & 0x800) == 0) {
                this->actionFunc = func_808BA204;
                this->unk_14C = 0.0f;
            } else {
                Actor_Kill(thisx);
            }
            break;
        default:
            break;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Init.s")

void BgTokiHikari_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Destroy.s")

void func_808B9F98(BgTokiHikari* this, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808B9F98.s")

void BgTokiHikari_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiHikari* this = THIS;
    this->actionFunc(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Update.s")

void BgTokiHikari_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiHikari* this = THIS;

    switch (thisx->params) {
        case 0:
            func_808BA018(this, globalCtx);
            break;
        case 1:
            func_808BA2CC(this, globalCtx);
            break;
        default:
            break;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Draw.s")

void func_808BA018(BgTokiHikari* this, GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 246);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0xFC),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (gSaveContext.linkAge == 0) {
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06008190);
    } else {
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06007E20);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames & 0x7F, 0x40, 0x20));
        gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames & 0x7F, 0x40, 0x20));
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x116),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007EE0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 284);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA018.s")

void func_808BA204(BgTokiHikari *this, GlobalContext *globalCtx) {
    if (globalCtx->unk_11D30[1] != 0) {
        this->actionFunc = func_808BA22C;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA204.s")

void func_808BA22C(BgTokiHikari *this, GlobalContext *globalCtx) {
    if (this->unk_14C < 1.0f) {
        this->unk_14C += 0.05f;
    }
    else {
        this->unk_14C = 1.0f;
        this->actionFunc = func_808BA274;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA22C.s")

void func_808BA274(BgTokiHikari *this, GlobalContext *globalCtx) {
    if (this->unk_14C > 0.2f) {
        this->unk_14C -= 0.025f;
    }
    else {
        this->unk_14C = 0.0f;
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA274.s")

void func_808BA2CC(BgTokiHikari *this, GlobalContext *globalCtx) {
    u32 temp_v1;
    u32 temp_v1_5;
    u32 temp_v1_3;
    u32 temp;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 350);
    Matrix_Translate(0.0f, 276.0f, 1122.0f, 0);

    Matrix_Scale(0.32f, 0.32f, this->unk_14C * 7.0f, MTXMODE_APPLY);

    Matrix_RotateZ(M_PI, 1);
    func_80093D18(oGfxCtx);
    Matrix_Push();

    gDPPipeSync(oGfxCtx->polyXlu.p++);

    temp = this->unk_14C;
    temp_v1 = temp * 255;
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0x80, temp_v1, ((temp * 155) + 0x64), temp_v1, temp_v1);

    gDPSetEnvColor(oGfxCtx->polyXlu.p++, (temp * 155.0f) + 0x64, temp_v1, 0, 0x80);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(oGfxCtx, "../z_bg_toki_hikari.c", 0x17E), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    temp_v1_3 = globalCtx->gameplayFrames & 0x7F;
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, Gfx_TwoTexScroll(oGfxCtx, 0, (0 - temp_v1_3) * 2, 0U, 0x20, 0x40, 1, temp_v1_3 * 4, 0, 0x20, 0x40));

    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000880);

    Matrix_Pull();
    Matrix_Push();

    gDPPipeSync(oGfxCtx->polyXlu.p++);

    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, ((temp * 200) & 0xFF));

    temp_v1_5 = (temp * 255) & 0xFF;
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, temp_v1_5, temp_v1_5, temp_v1_5, ((200 * temp) & 0xFF));

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(oGfxCtx, "../z_bg_toki_hikari.c", 415), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(oGfxCtx->polyXlu.p++, D_060009C0);
    Matrix_Pull();
    Matrix_Push();

    gDPPipeSync(oGfxCtx->polyXlu.p++);

    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, ((temp * 200) & 0xFF));

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(oGfxCtx, "../z_bg_toki_hikari.c", 0x1B5), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000A10);

    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 443);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA2CC.s")
