import cairosvg
import os

def convert_svg_to_png(svg_path, png_path, width=1024, height=1024):
    try:
        cairosvg.svg2png(url=svg_path, write_to=png_path, output_width=width, output_height=height)
        print(f"Successfully converted {svg_path} to {png_path}")
    except Exception as e:
        print(f"Error converting {svg_path}: {e}")

if __name__ == "__main__":
    assets_dir = "assets/images/icons"
    
    # Define files to convert
    files = [
        ("logo.svg", "logo.png"),
        ("logo_dark.svg", "logo_dark.png")
    ]
    
    for svg_name, png_name in files:
        svg_full_path = os.path.join(assets_dir, svg_name)
        png_full_path = os.path.join(assets_dir, png_name)
        
        if os.path.exists(svg_full_path):
            convert_svg_to_png(svg_full_path, png_full_path)
        else:
            print(f"File not found: {svg_full_path}")
