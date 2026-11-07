import os
import re
from PIL import Image
import cairo

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO_DIR = os.path.dirname(SCRIPT_DIR)
OUT_DIR = os.path.join(REPO_DIR, "assets", "exported_png")
os.makedirs(f"{OUT_DIR}/Pure_White", exist_ok=True)
os.makedirs(f"{OUT_DIR}/Pure_Black", exist_ok=True)
os.makedirs(f"{OUT_DIR}/Translucent", exist_ok=True)

from generate_13_vectors import GLYPHS

plate_trans = Image.open(f"{REPO_DIR}/src/res/drawable-nodpi/ic_liquid_glass_plate_0.png")

def render_glyph(paths_def, color_rgb):
    surface = cairo.ImageSurface(cairo.FORMAT_ARGB32, 512, 512)
    ctx = cairo.Context(surface)
    ctx.set_source_rgba(color_rgb[0], color_rgb[1], color_rgb[2], 0.95)
    
    for p in paths_def:
        d = p["d"]
        tokens = re.findall(r"([A-Za-z])|([-\d.]+)", d)
        cmd = None
        nums = []
        for t_cmd, t_num in tokens:
            if t_cmd:
                if cmd and nums:
                    execute_cmd(ctx, cmd, nums)
                cmd = t_cmd
                nums = []
            elif t_num:
                nums.append(float(t_num))
        if cmd and nums:
            execute_cmd(ctx, cmd, nums)
        
        if p.get("fill"):
            ctx.fill()
        else:
            sw = p.get("stroke", 14)
            ctx.set_line_width(sw)
            ctx.set_line_cap(cairo.LINE_CAP_ROUND if p.get("round") else cairo.LINE_CAP_SQUARE)
            ctx.set_line_join(cairo.LINE_JOIN_ROUND)
            ctx.stroke()
            
    surface.flush()
    # Convert cairo surface to PIL Image
    buf = surface.get_data()
    glyph_img = Image.frombuffer("RGBA", (512, 512), buf, "raw", "BGRA", 0, 1)
    return glyph_img

def execute_cmd(ctx, cmd, nums):
    # Parse standard SVG path commands
    if cmd == 'M':
        for i in range(0, len(nums), 2):
            if i == 0: ctx.move_to(nums[0], nums[1])
            else: ctx.line_to(nums[i], nums[i+1])
    elif cmd == 'm':
        for i in range(0, len(nums), 2):
            if i == 0: ctx.rel_move_to(nums[0], nums[1])
            else: ctx.rel_line_to(nums[i], nums[i+1])
    elif cmd == 'L':
        for i in range(0, len(nums), 2):
            ctx.line_to(nums[i], nums[i+1])
    elif cmd == 'l':
        for i in range(0, len(nums), 2):
            ctx.rel_line_to(nums[i], nums[i+1])
    elif cmd == 'H':
        for x in nums: ctx.line_to(x, ctx.get_current_point()[1])
    elif cmd == 'V':
        for y in nums: ctx.line_to(ctx.get_current_point()[0], y)
    elif cmd == 'C':
        for i in range(0, len(nums), 6):
            ctx.curve_to(nums[i], nums[i+1], nums[i+2], nums[i+3], nums[i+4], nums[i+5])
    elif cmd == 'Q':
        for i in range(0, len(nums), 4):
            # quadratic bezier to cubic
            x0, y0 = ctx.get_current_point()
            x1, y1 = nums[i], nums[i+1]
            x2, y2 = nums[i+2], nums[i+3]
            ctx.curve_to(x0 + 2/3*(x1-x0), y0 + 2/3*(y1-y0), x2 + 2/3*(x1-x2), y2 + 2/3*(y1-y2), x2, y2)
    elif cmd in ('Z', 'z'):
        ctx.close_path()

for key, gdef in GLYPHS.items():
    title = gdef["title"].replace(" ", "_")
    # 1. White style
    glyph_w = render_glyph(gdef["paths"], (0.07, 0.07, 0.07))
    comp_w = Image.alpha_composite(plate_white, glyph_w)
    comp_w.save(f"{OUT_DIR}/Pure_White/{title}_White.png")
    
    # 2. Black style
    glyph_b = render_glyph(gdef["paths"], (1.0, 1.0, 1.0))
    comp_b = Image.alpha_composite(plate_black, glyph_b)
    comp_b.save(f"{OUT_DIR}/Pure_Black/{title}_Black.png")
    
    # 3. Translucent style
    comp_t = Image.alpha_composite(plate_trans, glyph_b)
    comp_t.save(f"{OUT_DIR}/Translucent/{title}_Translucent.png")

print(f"Exported all 39 PNGs to {OUT_DIR}")
