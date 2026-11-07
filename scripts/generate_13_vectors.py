import xml.etree.ElementTree as ET

# 13 glyph definitions centered at 512x512 with 48dp viewport
# All glyphs designed with strokeWidth 12-16 or solid fill to match Nothing OS aesthetic
GLYPHS = {
    "ic_adrenox": {
        "title": "Adrenox Connect",
        "paths": [
            # Mahindra Twin Peaks wings
            {"d": "M156 360 C170 310, 220 180, 256 140 C240 200, 215 270, 195 360 Z", "fill": True},
            {"d": "M356 360 C342 310, 292 180, 256 140 C272 200, 297 270, 317 360 Z", "fill": True},
            {"d": "M256 220 C242 270, 226 320, 218 360 L294 360 C286 320, 270 270, 256 220 Z", "fill": True}
        ]
    },
    "ic_cryptogram": {
        "title": "Cryptogram",
        "paths": [
            # Cipher grid / puzzle block with key
            {"d": "M130 130 H382 V382 H130 Z", "stroke": 14},
            {"d": "M130 214 H382 M130 298 H382 M214 130 V382 M298 130 V382", "stroke": 10},
            {"d": "M172 172 L172 172.01 M256 256 L256 256.01 M340 340 L340 340.01", "stroke": 20, "round": True}
        ]
    },
    "ic_hastings_direct": {
        "title": "Hastings Direct",
        "paths": [
            # Soaring bird / wings
            {"d": "M120 280 C180 260, 230 210, 256 150 C282 210, 332 260, 392 280 C330 300, 280 270, 256 230 C232 270, 182 300, 120 280 Z", "fill": True},
            {"d": "M170 330 C210 320, 240 290, 256 250 C272 290, 302 320, 342 330 C300 350, 270 330, 256 300 C242 330, 212 350, 170 330 Z", "fill": True}
        ]
    },
    "ic_hmrc": {
        "title": "HMRC",
        "paths": [
            # St Edwards Crown
            {"d": "M140 350 H372 V380 H140 Z", "fill": True},
            {"d": "M150 330 C150 250, 190 220, 256 220 C322 220, 362 250, 362 330 Z", "stroke": 14},
            {"d": "M256 130 V190 M230 156 H282", "stroke": 14, "round": True},
            {"d": "M190 270 Q256 300 322 270", "stroke": 12},
            {"d": "M150 340 H362", "stroke": 10}
        ]
    },
    "ic_justpark": {
        "title": "JustPark",
        "paths": [
            # Parking circle with bold P
            {"d": "M256 120 A136 136 0 1 0 392 256", "stroke": 16, "round": True},
            {"d": "M220 190 V322 M220 190 H270 A40 40 0 0 1 270 270 H220", "stroke": 16, "round": True}
        ]
    },
    "ic_lastwave": {
        "title": "LastWave",
        "paths": [
            # Equalizer soundwaves
            {"d": "M140 230 V282 M180 180 V332 M220 140 V372 M256 190 V322 M292 150 V362 M332 200 V312 M372 240 V272", "stroke": 16, "round": True}
        ]
    },
    "ic_mahindra_for_you": {
        "title": "Mahindra For You",
        "paths": [
            # Mahindra Twin Peaks with circular outline
            {"d": "M256 110 A146 146 0 1 0 402 256 A146 146 0 0 0 256 110 Z", "stroke": 12},
            {"d": "M180 330 C190 290, 230 190, 256 160 C244 210, 226 260, 210 330 Z", "fill": True},
            {"d": "M332 330 C322 290, 282 190, 256 160 C268 210, 286 260, 302 330 Z", "fill": True}
        ]
    },
    "ic_myrac": {
        "title": "myRAC",
        "paths": [
            # RAC rescue breakdown badge (R A C stylized)
            {"d": "M130 190 H170 A30 30 0 0 1 170 250 H130 V322 M165 250 L195 322", "stroke": 16, "round": True},
            {"d": "M215 322 L256 190 L297 322 M230 280 H282", "stroke": 16, "round": True},
            {"d": "M382 220 A45 45 0 0 0 325 256 A45 45 0 0 0 382 292", "stroke": 16, "round": True}
        ]
    },
    "ic_pixel_gun_3d": {
        "title": "Pixel Gun 3D",
        "paths": [
            # Pixel art pistol
            {"d": "M160 200 H330 V250 H270 V320 H220 V250 H160 Z", "fill": True},
            {"d": "M330 220 H360 V240 H330 Z", "fill": True},
            {"d": "M240 260 H260 V290 H240 Z", "fill": True}
        ]
    },
    "ic_puregym": {
        "title": "PureGym",
        "paths": [
            # PureGym running circle P
            {"d": "M256 120 A136 136 0 1 0 392 256 A136 136 0 0 0 256 120 Z", "stroke": 14},
            {"d": "M210 180 H270 A45 45 0 0 1 270 270 H210 V332", "stroke": 18, "round": True}
        ]
    },
    "ic_ringgo": {
        "title": "RingGo",
        "paths": [
            # Concentric rings with P
            {"d": "M256 130 A126 126 0 1 0 382 256", "stroke": 12, "round": True},
            {"d": "M256 160 A96 96 0 1 0 352 256", "stroke": 12, "round": True},
            {"d": "M230 200 H265 A30 30 0 0 1 265 260 H230 V312", "stroke": 16, "round": True}
        ]
    },
    "ic_tsb": {
        "title": "TSB Bank",
        "paths": [
            # Three interlocking rings
            {"d": "M200 256 A66 66 0 1 0 332 256 A66 66 0 0 0 200 256 Z", "stroke": 14},
            {"d": "M256 200 A66 66 0 1 0 388 200 A66 66 0 0 0 256 200 Z", "stroke": 14},
            {"d": "M144 200 A66 66 0 1 0 276 200 A66 66 0 0 0 144 200 Z", "stroke": 14}
        ]
    },
    "ic_zoho_assist": {
        "title": "Zoho Assist",
        "paths": [
            # Remote support laptop with cursor
            {"d": "M160 170 H352 V300 H160 Z", "stroke": 14, "round": True},
            {"d": "M130 310 H382 V332 H130 Z", "fill": True},
            {"d": "M240 210 L270 270 L254 268 L244 290 L232 284 L242 262 L224 260 Z", "fill": True}
        ]
    }
}

print(f"Loaded {len(GLYPHS)} glyph definitions.")
